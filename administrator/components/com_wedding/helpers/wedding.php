<?php
defined('_JEXEC') or die;

class weddingHelper
{
	public static $extention = 'com_content';
	
	function addSubmenu($vname)
	{
		$name = JText::_('COM_WEDDING_USERS');
		$link = 'index.php?option=com_wedding&view=users';
		JSubMenuHelper::addEntry($name, $link, $vname=='users');
		
		$name = JText::_('COM_WEDDING_APPS');
		$link = 'index.php?option=com_wedding&view=apps';
		JSubMenuHelper::addEntry($name, $link, $vname=='apps');
		
		$name = JText::_('COM_WEDDING_TEMPLATES');
		$link = 'index.php?option=com_wedding&view=templates';
		JSubMenuHelper::addEntry($name, $link, $vname=='templates');
		
		$name = 'Album';
		$link = 'index.php?option=com_wedding&view=album';
		JSubMenuHelper::addEntry($name, $link, $vname=='album');
		
		$name = 'Chuyện tình yêu';
		$link = 'index.php?option=com_wedding&view=story';
		JSubMenuHelper::addEntry($name, $link, $vname=='story');
	}
	
	function getUserTemplate()
	{
		$juser = & JFactory::getUser();
		$profile_id = JRequest::getInt('user_id', $juser->id);
		require_once(JPATH_COMPONENT_ADMINISTRATOR.DS.'helpers'.DS.'user.php');
		return userHelpers::getCurrentTemplate($profile_id);
	}
	
	function getTemplateFolder($folder = 'css', $tmpl = 'default')
	{
		if(!empty($folder))
			$folder .= '/';
		return JURI::base().'components/com_wedding/templates/'.$tmpl.'/'.$folder;
	}
	
	/**
	 * Gets a list of the actions that can be performed.
	 *
	 * @param	int		The category ID.
	 *
	 * @return	JObject
	 * @since	1.6
	 */
	public static function getActions($categoryId = 0)
	{
		$user	= JFactory::getUser();
		$result	= new JObject;

		if (empty($categoryId)) {
			$assetName = 'com_wedding';
		} else {
			$assetName = 'com_wedding.category.'.(int) $categoryId;
		}

		$actions = array(
			'core.admin', 'core.manage', 'core.create', 'core.edit', 'core.edit.state', 'core.delete'
		);

		foreach ($actions as $action) {
			$result->set($action,	$user->authorise($action, $assetName));
		}

		return $result;
	}
}