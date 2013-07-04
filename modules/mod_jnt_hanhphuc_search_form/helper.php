<?php
/**
 * @package		Joomla.Site
 * @subpackage	mod_jnt_hanhphuc_search_form
 * @copyright	Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 */

// no direct access
defined('_JEXEC') or die;

/**
 * @package		Joomla.Site
 * @subpackage	mod_jnt_hanhphuc_search_form
 * @since		1.5
 */
class modJnt_Hanhphuc_Serach_FromHelper
{
	static function &getList(&$params)
	{
		$app	= JFactory::getApplication();
		$db		= JFactory::getDbo();
		$rows	= array();
		$query	= $db->getQuery(true);

		$serverinfo = $params->get('serverinfo');
		$siteinfo	= $params->get('siteinfo');
		$counter	= $params->get('counter');
		$increase	= $params->get('increase');

		$i = 0;
		if ($serverinfo) {
			$rows[$i] = new stdClass;
			$rows[$i]->title	= JText::_('mod_jnt_hanhphuc_search_form_OS');
			$rows[$i]->data		= substr(php_uname(), 0, 7);
			$i++;

			$rows[$i] = new stdClass;
			$rows[$i]->title	= JText::_('mod_jnt_hanhphuc_search_form_PHP');
			$rows[$i]->data	= phpversion();
			$i++;

			$rows[$i] = new stdClass;
			$rows[$i]->title	= JText::_('mod_jnt_hanhphuc_search_form_MYSQL');
			$rows[$i]->data	= $db->getVersion();
			$i++;

			$rows[$i] = new stdClass;
			$rows[$i]->title	= JTEXT::_('mod_jnt_hanhphuc_search_form_TIME');
			$rows[$i]->data	= JHtml::_('date', 'now', 'H:i');
			$i++;

			$rows[$i] = new stdClass;
			$rows[$i]->title	= JText::_('mod_jnt_hanhphuc_search_form_CACHING');
			$rows[$i]->data	= $app->getCfg('caching') ? JText::_('JENABLED'):JText::_('JDISABLED');
			$i++;

			$rows[$i] = new stdClass;
			$rows[$i]->title	= JText::_('mod_jnt_hanhphuc_search_form_GZIP');
			$rows[$i]->data	= $app->getCfg('gzip') ? JText::_('JENABLED'):JText::_('JDISABLED');
			$i++;
		}

		if ($siteinfo) {
			$query->select('COUNT(id) AS count_users');
			$query->from('#__users');
			$db->setQuery($query);
			$users = $db->loadResult();

			$query->clear();
			$query->select('COUNT(id) AS count_items');
			$query->from('#__content');
			$query->where('state = 1');
			$db->setQuery($query);
			$items = $db->loadResult();

			$query->clear();
			$query->select('COUNT(id) AS count_links ');
			$query->from('#__weblinks');
			$query->where('state = 1');
			$db->setQuery($query);
			$links = $db->loadResult();

			if ($users) {
				$rows[$i] = new stdClass;
				$rows[$i]->title	= JText::_('mod_jnt_hanhphuc_search_form_USERS');
				$rows[$i]->data	= $users;
				$i++;
			}

			if ($items) {
				$rows[$i] = new stdClass;
				$rows[$i]->title	= JText::_('mod_jnt_hanhphuc_search_form_ARTICLES');
				$rows[$i]->data	= $items;
				$i++;
			}

			if ($links) {
				$rows[$i] = new stdClass;
				$rows[$i]->title	= JText::_('mod_jnt_hanhphuc_search_form_WEBLINKS');
				$rows[$i]->data	= $links;
				$i++;
			}
		}

		if ($counter) {
			$query->clear();
			$query->select('SUM(hits) AS count_hits');
			$query->from('#__content');
			$query->where('state = 1');
			$db->setQuery($query);
			$hits = $db->loadResult();

			if ($hits) {
				$rows[$i] = new stdClass;
				$rows[$i]->title	= JText::_('mod_jnt_hanhphuc_search_form_ARTICLES_VIEW_HITS');
				$rows[$i]->data	= $hits + $increase;
				$i++;
			}
		}

		return $rows;
	}
}
