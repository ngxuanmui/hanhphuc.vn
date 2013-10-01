<?php
/**
 * @package		Joomla.Site
 * @subpackage	mod_business_content
 * @copyright	Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 */

// no direct access
defined('_JEXEC') or die;

require_once JPATH_SITE.'/components/com_content/helpers/route.php';

/**
 * @package		Joomla.Site
 * @subpackage	mod_business_content
 * @since		1.5
 */
class modBusinessContentHelper
{
	static function &getList(&$params)
	{
		$db		= JFactory::getDbo();
		$rows	= array();
		$query	= $db->getQuery(true);
		
		$limit	= $params->get('limit', 5);
		
		$query->select('c.*')
				->from('#__hp_business_content c');
		
		$query->order('c.id DESC');
		
		$db->setQuery($query, 0, $limit);
		
		$rows = $db->loadObjectList('id');
		
		return $rows;
	}
}
