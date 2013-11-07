<?php
/**
 * @package		Joomla.Site
 * @subpackage	mod_business_user_albums
 * @copyright	Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 */

// no direct access
defined('_JEXEC') or die;

/**
 * @package		Joomla.Site
 * @subpackage	mod_business_user_albums
 * @since		1.5
 */
class modBusinessUserAlbumsHelper
{
	static function getList(&$params)
	{
		$db = JFactory::getDbo();
		
		$query = $db->getQuery(true);
		
		$query->select('a.*')
				->from('#__hp_albums a')
				->where('a.state = 1')
				->order('a.id DESC')
		;
		
		$arrViews = array('services', 'service');
		
		$userId = JRequest::getInt('user', 0);
		$view = JRequest::getString('view');
		
		if ($userId && in_array($view, $arrViews))
			$query -> where('a.created_by = ' . (int) $userId);
		else 
			return false;
		
		$db->setQuery($query, 0, 15);
		
		$rs = $db->loadObjectList();
		
// 		var_dump($rs);
		
		return $rs;
	}
}
