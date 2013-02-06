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


        if(!empty($data->id)) {
            $db = JFactory::getDbo();
            if($userType == 0) {
                //Normal user
                $query = $db->getQuery(true);
                $query->select('*')
                    ->from('#__user_profiles')
                    ->where('user_id = '.(int)$data->id);
                $db->setQuery($query);
                $userProfile = $db->loadObjectList();
                $data->user_profile = new stdClass();
                foreach($userProfile as $profile) {
                    $key = $profile->profile_key;
                    $val = $profile->profile_value;
                    $data->user_profile->$key = $val;
                }
            } else if($userType == 1) {
                $query = $db->getQuery(true);
                $query->select('*')
                    ->from('#__hp_business_profile')
                    ->where('user_id = '.(int)$data->id);
                $db->setQuery($query);
                $profile = $db->loadObject();
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
	public function onContentPrepareForm($form, $data) {
		if (!($form instanceof JForm)) {
			$this->_subject->setError('JERROR_NOT_A_FORM');
			return false;
		}
		JForm::addFormPath(JPATH_PLUGIN_HPUSER.DS.'forms');
		$form->loadFile('hpuser', false);
		
		$user = JFactory::getUser();
		
		$formName = $form->getName();
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
        if($data['user_type'] == 1) {

            $profileFormData = $formData['business_profile'];

            $profile->business_director = $profileFormData['business_director'];
            $profile->business_name = $profileFormData['business_name'];
            $profile->business_address = $profileFormData['business_address'];
            $profile->business_village = $profileFormData['business_village'];
            $profile->business_phone = $profileFormData['business_phone'];
            $profile->business_fax = $profileFormData['business_fax'];
            $profile->business_website = $profileFormData['business_website'];
            $profile->business_sitename = $profileFormData['business_sitename'];
            $profile->business_slogan = $profileFormData['business_slogan'];

            //TODO: business logo and banner


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
        } else {
            $db->setQuery(
                'DELETE FROM #__user_profiles WHERE user_id = '.(int)$data['id'] .
                    " AND profile_key IN ('website_slogan', 'name_of_yours', 'date_organization')"
            );
            if(!$db->query()) {
                throw new Exception($db->getErrorMsg());
            }


            $tuples = array();
            $order	= 1;
            $userProfile = $formData['user_profile'];
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


    private function uploadImages($field = 'images', $itemId = 0, $delImage = 0, $oldImg = '')
    {
        $jFileInput = new JInput($_FILES);
        $file = $jFileInput->get('jform', array(), 'array');

        // If there is no uploaded file, we have a problem...
        if (!is_array($file)) {
//			JError::raiseWarning('', 'No file was selected.');
            return '';
        }

        // Build the paths for our file to move to the components 'upload' directory
        $fileName = $file['name'][$field];
        $tmp_src    = $file['tmp_name'][$field];

        $image = '';

        // if delete old image checked or upload new file
        if ($delImage || $fileName)
        {
            $item = $this->getItem();

            $oldImage = JPATH_ROOT . DS . str_replace('/', DS, $item->$field);

            // unlink file
            @unlink($oldImage);

            $image = '';
        }
        else
            $image = $oldImg;

        $date = date('Y') . DS . date('m') . DS . date('d');

        $path = ($field == 'images') ? 'thumbs' : 'featured';

        $dest = JPATH_ROOT . DS . 'images' . DS . 'je_content' . DS . $path . DS . $date . DS . $itemId . DS;

        // Make directory
        @mkdir($dest, '0777', true);

        if (isset($fileName) && $fileName) {

            $filepath = JPath::clean($dest.$fileName);

            /*
               if (JFile::exists($filepath)) {
                   JError::raiseWarning(100, JText::_('COM_MEDIA_ERROR_FILE_EXISTS'));	// File exists
               }
               */

            // Move uploaded file
            jimport('joomla.filesystem.file');

            if (!JFile::upload($tmp_src, $filepath))
            {
                JError::raiseWarning(100, JText::_('COM_MEDIA_ERROR_UNABLE_TO_UPLOAD_FILE')); // Error in upload
                return '';
            }

            // set value to return
            $image = 'images/je_content/'.$path.'/' . str_replace(DS, '/', $date) . '/' . $itemId . '/' . $fileName;

//			return $image;
        }

        return $image;
    }
}
