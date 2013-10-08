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
		
		$limit		= $params->get('limit', 5);
		$featured	= $params->get('featured', 0);
		
		$query->select('c.*')
				->from('#__hp_business_content c')
				->where('c.state = 1')
		;
		
		if ($featured)
			$query->where('c.featured = 1');
		
		// join over user to get username
		$query->select('u.username, u.name');
		$query->join('INNER', '#__users u ON u.id = c.created_by');
		
		// Filter by start and end dates.
		$nullDate	= $db->Quote($db->getNullDate());
		$nowDate	= $db->Quote(JFactory::getDate()->toSql());
		
		$query->where('(c.publish_up = '.$nullDate.' OR c.publish_up <= '.$nowDate.')');
		$query->where('(c.publish_down = '.$nullDate.' OR c.publish_down >= '.$nowDate.')');
		
		$query->order('c.id DESC');
		
		$db->setQuery($query, 0, $limit);
		
		$rows = $db->loadObjectList('id');
		
		return $rows;
	}
}
