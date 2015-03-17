<?php
/**
 * @version		$Id: example.php 21097 2011-04-07 15:38:03Z dextercowley $
 * @copyright	Copyright (C) 2005 - 2009 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 */

// No direct access
defined('_JEXEC') or die;

jimport('joomla.plugin.plugin');

define('JPATH_PLUGIN_HPUSER', dirname(__FILE__));

// business logo
define('CFG_BUSINESS_LOGO_WIDTH', 200);
define('CFG_BUSINESS_LOGO_HEIGHT', 200);

/**
 * Example User Plugin
 *
 * @package		Joomla.Plugin
 * @subpackage	User.example
 * @since		1.5
 */
class plgUserHpuser extends JPlugin {
	
    public function __construct(&$subject, $config = array()) {
        parent::__construct($subject, $config);
        
        JHTML::register('users.jform_user_profile_avatar', function($value){
            echo '<img
                    
                    src="'.JURI::root().'images/users/'.$value.'?rand='.rand(0, 99999).'"/>';
        });
        JHtml::register('users.jform_business_profile_business_logo', function($value) {
            echo '<img
                    
                    src="'.JURI::root().'images/business/'.$value.'?rand='.rand(0, 99999).'"/>';
        });
        JHtml::register('users.jform_business_profile_business_banner', function($value) {
            echo '<img
                    height="100"
                    src="'.JURI::root().'images/business/'.$value.'?rand='.rand(0, 99999).'"/>';
        });
    }


    /**
	 * Prepair data for Form (use in getForm in model)
	 * @param	string	$context	The context for the data
	 * @param	int		$data		The user id
	 * @param	object
	 *
	 * @return	boolean
	 * @since	1.6
	 */
	public function onContentPrepareData($context, $data) {
		if (!in_array($context, array('com_users.profile','com_users.user', 'com_users.registration', 'com_admin.profile'))) {
			return true;
		}
		
		$option = JRequest::getString('option');
		
		if ($option == 'com_contact')
			return 1;
		
		$userType = JRequest::getInt('type', 0);
		if (is_object($data)) {
			if(!isset($data->user_type)) {
				$data->user_type = $userType;
			}
			$userType = $data->user_type;
		} else {
			if(!isset($data['user_type'])){
				$data['user_type'] = $userType;
			}
			$userType = $data['user_type'];
		}
		
		$layout = JRequest::getString('layout');

        if(!empty($data->id)) {
            $db = JFactory::getDbo();
            if($userType == 0) {
                //Normal user
                $query = $db->getQuery(true);
                $query->clear()
                	->select('*')
                    ->from('#__user_profiles')
                    ->where('user_id = '.(int)$data->id);
                $db->setQuery($query);
                $userProfile = $db->loadObjectList();
                $data->user_profile = new stdClass();
                foreach($userProfile as $profile) {
                    $key = $profile->profile_key;
                    $val = $profile->profile_value;
                    
                    if ($key == 'user_city')
                    {
                    	$query->clear()
                    		->select('*')
		                    ->from('#__location_province')
		                    ->where('id = '. (int) $val);
                    	
		                $db->setQuery($query);
		                $obj = $db->loadObject();
		                
		                if ($db->getErrorMsg())
		                	die ($db->getErrorMsg());
		                
		                if ($layout != 'edit')
		                	$val = $obj->title;
                    }
                    
                    if ($key == 'user_district')
                    {
                    	$query->clear()
                    		->select('*')
		                    ->from('#__location_district')
		                    ->where('id = '. (int) $val);
                    	
		                $db->setQuery($query);
		                $obj = $db->loadObject();
		                
		                if ($db->getErrorMsg())
		                	die ($db->getErrorMsg());
		                
		                if ($layout != 'edit')
		                	$val = $obj->title;
                    }
                    
                    $data->user_profile->$key = $val;
                }
                
                $data->user_profile->avatar_old = $data->avatar;
                
            } else if($userType == 1) {
                $query = $db->getQuery(true);
                $query->select('*')
                    ->from('#__hp_business_profile')
                    ->where('user_id = '.(int)$data->id);
                $db->setQuery($query);
                $profile = $db->loadObject();
                
                $query->clear()
		                ->select('*')
		                ->from('#__location_province')
		                ->where('id = '. (int) $profile->business_city);
                 
                $db->setQuery($query);
                $obj = $db->loadObject();
                
                if ($db->getErrorMsg())
                	die ($db->getErrorMsg());
                
                if ($layout != 'edit')
                	$profile->business_city = $obj->title;
                
                $query->clear()
		                ->select('*')
		                ->from('#__location_district')
		                ->where('id = '. (int) $profile->business_district);
                
                $db->setQuery($query);
                $obj = $db->loadObject();
                
                if ($db->getErrorMsg())
                	die ($db->getErrorMsg());
                
                if ($layout != 'edit')
                	$profile->business_district = $obj->title;
                
                $profile->business_logo_old = $profile->business_logo;
                $profile->business_banner_old = $profile->business_banner;
                
                $data->business_profile = $profile;
            }
        }
		
		return true;
	}
	
	/**
	 * @param	JForm	$form	The form to be altered.
	 * @param	array	$data	The associated data for the form.
	 *
	 * @return	boolean
	 * @since	1.6
	 */
	public function onContentPrepareForm($form, $data) 
	{
		$formName = $form->getName();
		
// 		var_dump($formName);
		
		if ($formName == 'com_users.reset_request' || $formName == 'com_users.remind' || $formName == 'com_contact.contact')
			return 1;
		
		if (!($form instanceof JForm)) {
			$this->_subject->setError('JERROR_NOT_A_FORM');
			return false;
		}
		JForm::addFormPath(JPATH_PLUGIN_HPUSER.DS.'forms');
		$form->loadFile('hpuser', false);
		
		$user = JFactory::getUser();
		
		$userType = JRequest::getInt('type', -1);
		if(is_object($data) && isset($data->user_type)) {
			$userType = $data->user_type;
		}
		$form->setValue('user_type', '', $userType);

        if(@$data->id > 0) {
            if($userType == 1) {
                $form->loadFile('business_user', false);
            } else {
                $form->loadFile('normal_user', false);
            }
        } elseif(!$user->get('isRoot')) {
            $form->loadFile('business_user', false);
            $form->loadFile('normal_user', false);
		}
		
		//If not at new user, don't editable user_type field
		if($formName != 'com_users.registration' && @$data->id != 0) {
            $form->setFieldAttribute('user_type', 'readonly', 'true');
			
			$form->setFieldAttribute('username', 'readonly', 'true');
			$form->setFieldAttribute('email1', 'readonly', 'true');
			
			$form->removeField("email2");
			
			/*if($user->get('isRoot')) {
				$form->setFieldAttribute('user_type', 'readonly', 'true');
			} else {
				$form->setFieldAttribute('user_type', 'type', 'hidden');
			}*/
		} else {
            $form->removeField("business_logo", "business_profile");
            $form->removeField("business_banner", "business_profile");
			
			
        }
		
		return true;
	}
	
	public function onUserAfterSave($data, $isNew, $result, $error) {
        $db = JFactory::getDbo();
		$profile = new stdClass();
		if(isset($data['id']) && $data['id']) $profile->user_id = $data['id'];

        $formData = $_POST['jform'];
        if($data['user_type'] == 1 && !empty($formData['business_profile'])) {

            $profileFormData = $formData['business_profile'];

            $profile->business_director = $profileFormData['business_director'];
            $profile->business_name = $profileFormData['business_name'];
            $profile->business_address = $profileFormData['business_address'];
            $profile->business_city = $profileFormData['business_city'];
            $profile->business_district = $profileFormData['business_district'];
            $profile->business_village = $profileFormData['business_village'];
            $profile->business_phone = $profileFormData['business_phone'];
            $profile->business_fax = $profileFormData['business_fax'];
            $profile->business_website = $profileFormData['business_website'];
            $profile->business_sitename = $profileFormData['business_sitename'];
            $profile->business_slogan = $profileFormData['business_slogan'];

            $logoBaseDir = JPATH_ROOT.DS.'images'.DS.'business';
            if($logo = $this->upload('business_profile.business_logo', $logoBaseDir, $profile->user_id.DS.'logo'.DS.'logo', true, $profileFormData['business_logo_old'])) {
                $profile->business_logo = $logo;
            }

            $bannerBaseDir = JPATH_ROOT.DS.'images'.DS.'business';
            if($banner = $this->upload('business_profile.business_banner', $bannerBaseDir, $profile->user_id.DS.'banner'.DS.'banner', true, $profileFormData['business_banner_old'])) {
                $profile->business_banner = $banner;
            }

            //Check exists record:
            $query = $db->getQuery(true);
            $query->select('*')
                ->from('#__hp_business_profile bp')
                ->where('bp.user_id = '.(int)$data['id']);
            $db->setQuery($query);
            $object = $db->loadObject();

            if($object) {
                return $db->updateObject('#__hp_business_profile', $profile, 'user_id');
            } else {
                return $db->insertObject('#__hp_business_profile', $profile, 'user_id');
            }
        } elseif(!empty($formData['user_profile'])) {
            $db->setQuery(
                'DELETE FROM #__user_profiles WHERE user_id = '.(int)$data['id'] .
                    " AND profile_key IN ('website_slogan', 'name_of_yours', 'date_organization', 'user_city', 'user_district', 'user_village')"
            );
            if(!$db->query()) {
                throw new Exception($db->getErrorMsg());
            }


            $tuples = array();
            $order	= 1;
            $userProfile = $formData['user_profile'];

            //Upload avatar
            $avatarBaseDir = JPATH_ROOT.DS.'images'.DS.'users';
            if($avatar = $this->upload('user_profile.avatar', $avatarBaseDir, $data['id'].DS.'avata'.DS.'avatar', true, $userProfile['avatar_old'])) {
                $userProfile['avatar'] = $avatar;
                $db->setQuery(
                    'DELETE FROM #__user_profiles WHERE user_id = '.(int)$data['id'] .
                        " AND profile_key IN ('avatar')"
                );
                if(!$db->query()) {
                    throw new Exception($db->getErrorMsg());
                }
            }
            unset($userProfile['avatar_old']);

            foreach ($userProfile as $k => $v) {
                $tuples[] = '('.$data['id'].', '.$db->quote($k).', '.$db->quote($v).', '.$order++.')';
            }

            $db->setQuery('INSERT INTO #__user_profiles VALUES '.implode(', ', $tuples));

            if (!$db->query()) {
                throw new Exception($db->getErrorMsg());
            }
        }
		
		return true;
	}
	
	/**
	 * Remove all user profile information for the given user ID
	 *
	 * Method is called after user data is deleted from the database
	 *
	 * @param	array		$user		Holds the user data
	 * @param	boolean		$success	True if user was succesfully stored in the database
	 * @param	string		$msg		Message
	 */
	function onUserAfterDelete($user, $success, $msg) {
		return true;
	}
	
	/**
	 * This method should handle any login logic and report back to the subject
	 *
	 * @param	array	$user		Holds the user data.
	 * @param	array	$options	Extra options.
	 *
	 * @return	boolean	True on success
	 * @since	1.5
	 */
	public function onUserLogin($user, $options) {
		return true;
	}

    private function upload($field, $baseDir, $newFileName = false, $deleteOld = false, $oldFilename = '') {
        $jFileInput = new JInput($_FILES);
        $fileInput = $jFileInput->get('jform', array(), 'array');
        if(empty($fileInput)) return false;

        $field = explode('.', $field);

        $uploadFileName = $fileInput['name'];
        $uploadFileTemp = $fileInput['tmp_name'];
        foreach($field as $f) {
            if(!empty($uploadFileName[$f]) && !empty($uploadFileTemp[$f])) {
                $uploadFileName = $uploadFileName[$f];
                $uploadFileTemp = $uploadFileTemp[$f];
            } else {
                $uploadFileName = '';
                $uploadFileTemp = '';
                break;
            }
        }
        if(empty($uploadFileName)) {
            return false;
        }

        if($deleteOld && $oldFilename) {
            $oldFilename = is_array($oldFilename) ? $oldFilename : array($oldFilename);
            foreach($oldFilename as $key => &$value) {
                $value = $baseDir.DS.$oldFilename[$key];
//                 $oldFilename[$key] = $value;
                
                JFile::delete($value);
            }
            
        }

        $uploadFileExt = JFile::getExt($uploadFileName);
        
        if(!is_dir($baseDir)) {
            if(!mkdir($baseDir, 0777, true)) 
            	return false;
        }

        $fileName = ($newFileName) ? $newFileName.'.'.$uploadFileExt : $uploadFileName;
        $filePath = $baseDir.DS.$fileName;
        
        $resultUpload = JFile::upload($uploadFileTemp, $filePath);
        
        if ($resultUpload)
        {
        	// resize
        	require_once(JPATH_ROOT . '/jelibs/phpthumb/phpthumb.class.php');
        	
        	// create phpThumb object
        	$phpThumb = new phpThumb();
        	
        	if (file_exists(JPATH_ROOT . '/jelibs/phpthumb/phpThumb.config.php') && include_once(JPATH_ROOT . '/jelibs/phpthumb/phpThumb.config.php')) {
        		foreach ($PHPTHUMB_CONFIG as $key => $value) {
        			$keyname = 'config_'.$key;
        			$phpThumb->setParameter($keyname, $value);
        		}
        	} else {
        		echo '<div style="color: red; border: 1px red dashed; font-weight: bold; padding: 10px; margin: 10px; display: inline-block;">Error reading ../phpThumb.config.php</div><br>';
        	}
        	
        	// this is very important when using a single object to process multiple images
        	$phpThumb->resetObject();
        	
        	// set data source
        	$phpThumb->setSourceFilename($filePath);
        	
        	// set parameters (see "URL Parameters" in phpthumb.readme.txt)
        	$phpThumb->setParameter('w', CFG_BUSINESS_LOGO_WIDTH);        	
        	$phpThumb->setParameter('h', CFG_BUSINESS_LOGO_HEIGHT);
        	
        	$phpThumb->setParameter('zc', 'l');
        	
        	// set parameters
        	$phpThumb->setParameter('config_output_format', 'jpeg');
        	
        	// generate & output thumbnail
        	//$output_filename = 't-' . CFG_BUSINESS_LOGO_WIDTH . 'x' . CFG_BUSINESS_LOGO_HEIGHT . '-' . $fileName;
        	
        	
        	$capture_raw_data = false;
        	
        	if ($phpThumb->GenerateThumbnail()) {
        		$phpThumb->RenderToFile($filePath);
        	} else {
//         		do something with debug/error messages
        		echo 'Failed (size='.$thumbnail_width.').<br>';
        		echo '<div style="background-color:#FFEEDD; font-weight: bold; padding: 10px;">'.$phpThumb->fatalerror.'</div>';
        		echo '<form><textarea rows="40" cols="180" wrap="off">'.htmlentities(implode("\n* ", $phpThumb->debugmessages)).'</textarea></form><hr>';
        		die;
        	}
        }

        return $fileName;
    }
}
