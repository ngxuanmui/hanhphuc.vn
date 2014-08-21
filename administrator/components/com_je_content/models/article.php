<?php
/**
 * @version		$Id: article.php $
 * @copyright	Copyright (C) 2005 - 2011 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 * @author		muinx
 * This component was generated by http://joomlavietnam.net/ - 2012
 */
 
/**
 Generate by Component Gen Code - 2012
 */

// No direct access.
defined('_JEXEC') or die;

jimport('joomla.application.component.modeladmin');

/**
 * Article model.
 *
 * @package		Joomla.Administrator
 * @subpackage	com_je_content
 * @since		1.6
 */
class JE_ContentModelArticle extends JModelAdmin
{
	/**
	 * @var		string	The prefix to use with controller messages.
	 * @since	1.6
	 */
	protected $text_prefix = 'COM_JE_CONTENT_ARTICLE';

	/**
	* Method to test whether a record can be deleted.
	*
	* @param	object	A record object.
	* @return	boolean	True if allowed to delete the record. Defaults to the permission set in the component.
	* @since	1.6
	*/
   protected function canDelete($record)
   {
	   if (!empty($record->id)) {
		   if ($record->state != -2) {
			   return ;
		   }
		   $user = JFactory::getUser();

		   if (!empty($record->catid)) {
			   return $user->authorise('core.delete', 'com_je_content.category.'.(int) $record->catid);
		   }
		   else {
			   return parent::canDelete($record);
		   }
	   }
   }

	/**
	* Method to test whether a record can have its state changed.
	*
	* @param	object	A record object.
	* @return	boolean	True if allowed to change the state of the record. Defaults to the permission set in the component.
	* @since	1.6
	*/
   protected function canEditState($record)
   {
	   $user = JFactory::getUser();

	   // Check against the category.
	   if (!empty($record->catid)) {
		   return $user->authorise('core.edit.state', 'com_je_content.category.'.(int) $record->catid);
	   }
	   // Default to component settings if category not known.
	   else {
		   return parent::canEditState($record);
	   }
   }

	/**
	 * Returns a reference to the a Table object, always creating it.
	 *
	 * @param	type	The table type to instantiate
	 * @param	string	A prefix for the table class name. Optional.
	 * @param	array	Configuration array for model. Optional.
	 * @return	JTable	A database object
	 * @since	1.6
	 */
	public function getTable($type = 'Article', $prefix = 'JE_ContentTable', $config = array())
	{
		return JTable::getInstance($type, $prefix, $config);
	}

	/**
	 * Method to get the record form.
	 *
	 * @param	array	$data		Data for the form.
	 * @param	boolean	$loadData	True if the form is to load its own data (default case), false if not.
	 * @return	mixed	A JForm object on success, false on failure
	 * @since	1.6
	 */
	public function getForm($data = array(), $loadData = true)
	{
		// Get the form.
		$form = $this->loadForm('com_je_content.article', 'article', array('control' => 'jform', 'load_data' => $loadData));
		if (empty($form)) {
			return false;
		}

		// Determine correct permissions to check.
		if ($this->getState('article.id')) {
			// Existing record. Can only edit in selected categories.
			$form->setFieldAttribute('catid', 'action', 'core.edit');
		} else {
			// New record. Can only create in selected categories.
			$form->setFieldAttribute('catid', 'action', 'core.create');
		}

		// Modify the form based on access controls.
		if (!$this->canEditState((object) $data)) {
			// Disable fields for display.
			$form->setFieldAttribute('ordering', 'disabled', 'true');
			$form->setFieldAttribute('publish_up', 'disabled', 'true');
			$form->setFieldAttribute('publish_down', 'disabled', 'true');
			$form->setFieldAttribute('state', 'disabled', 'true');

			// Disable fields while saving.
			// The controller has already verified this is a record you can edit.
			$form->setFieldAttribute('ordering', 'filter', 'unset');
			$form->setFieldAttribute('publish_up', 'filter', 'unset');
			$form->setFieldAttribute('publish_down', 'filter', 'unset');
			$form->setFieldAttribute('state', 'filter', 'unset');
		}

		return $form;
	}

	/**
	 * Method to get the data that should be injected in the form.
	 *
	 * @return	mixed	The data for the form.
	 * @since	1.6
	 */
	protected function loadFormData()
	{
		// Check the session for previously entered form data.
		$data = JFactory::getApplication()->getUserState('com_je_content.edit.article.data', array());

		if (empty($data))
			$data = $this->getItem();
		
		if (is_object($data))
		{
			$data->hidden_image = base64_encode($data->images);
			$data->hidden_featured_image = base64_encode($data->featured_images);
		}
		else
		{
			$data['hidden_image'] = base64_encode($data['images']);
			$data['hidden_featured_image'] = base64_encode($data['featured_images']);
		}

		return $data;
	}
	
	public function save($data)
	{
		$saveResult = parent::save($data);
		
		if ($saveResult)
		{
			$id = $this->getState($this->getName() . '.id');
			
			// Upload thumb
			$thumb = $this->uploadImages('images', $id, $data['del_image'], base64_decode($data['hidden_image']));
			
//			if ($thumb)
				$data['images'] = $thumb;
			
			// Upload featured image
			$featured = $this->uploadImages('featured_images', $id, $data['del_featured_image'], base64_decode($data['hidden_featured_image']));
			
//			if ($featured)
				$data['featured_images'] = $featured;
			
			// update content
			$content = $this->copyFilesOnSave($data['fulltext'], $id);
			
			if ($content)
				$data['fulltext'] = $content;
			
			$data['id'] = $id;
			$saveResult = parent::save($data);
		}
		
		return $saveResult;
	}
	
	private function copyFilesOnSave($content = '', $itemId = 0)
	{
		if(!$content || !$itemId)
			return false;
		
		$date = date('Y') . DS . date('m') . DS . date('d');
		
		$dest = JPATH_ROOT . DS . 'images' . DS . 'je_content' . DS . $date . DS . $itemId . DS;
		@mkdir($dest, 0777, true);
		
		$doc=new DOMDocument();
		
		$doc->loadHTML($content);
		
		// just to make xpath more simple
		$xml=simplexml_import_dom($doc);
		
		$images=$xml->xpath('//img');
		
		$tmpSearch = array();
		$tmpReplace = array();
		
		foreach ($images as $img)
		{
			// Explode src to get file name
			$imgSrc = explode('/', $img['src']);
			
			if($imgSrc[0] == 'tmp')
			{
			
				// Search & Replace
				$tmpSearch[] = $img['src'];			
				$tmpReplace[] = 'images/je_content/' . str_replace(DS, '/', $date) . '/' . $itemId . '/' . end($imgSrc);
					
				$src = str_replace('/', DS, JPATH_ROOT.'/'.$img['src']);
			
				JFile::copy($src, $dest.end($imgSrc));
			}
		}
		
		$content = str_replace($tmpSearch, $tmpReplace, $content);
				
		return $content;
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
		@mkdir($dest, 0777, true);
		
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

	/**
	 * A protected method to get a set of ordering conditions.
	 *
	 * @param	object	A record object.
	 * @return	array	An array of conditions to add to add to ordering queries.
	 * @since	1.6
	 */
	protected function getReorderConditions($table)
	{
		$condition = array();
		$condition[] = 'catid = '. (int) $table->catid;
		$condition[] = 'state >= 0';
		return $condition;
	}
	
	/**
	 * Method to toggle the featured setting of articles.
	 *
	 * @param	array	The ids of the items to toggle.
	 * @param	int		The value to toggle to.
	 *
	 * @return	boolean	True on success.
	 */
	public function featured($pks, $value = 0)
	{
		// Sanitize the ids.
		$pks = (array) $pks;
		JArrayHelper::toInteger($pks);

		if (empty($pks)) {
			$this->setError(JText::_('COM_JE_CONTENT_NO_ITEM_SELECTED'));
			return false;
		}

		try {
			$db = $this->getDbo();

			$db->setQuery(
				'UPDATE #__je_content' .
				' SET featured = '.(int) $value.
				' WHERE id IN ('.implode(',', $pks).')'
			);
			if (!$db->query()) {
				throw new Exception($db->getErrorMsg());
			}

		} catch (Exception $e) {
			$this->setError($e->getMessage());
			return false;
		}

		$this->cleanCache();

		return true;
	}
}
