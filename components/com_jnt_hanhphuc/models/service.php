<?php
/**
 * @version		$Id: category.php 21097 2011-04-07 15:38:03Z dextercowley $
 * @package		Joomla.Site
 * @subpackage	com_contact
 * @copyright	Copyright (C) 2005 - 2011 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 */

// No direct access
defined('_JEXEC') or die;

jimport('joomla.application.component.modelitem');

/**
 * @package		Joomla.Site
 * @subpackage	com_contact
 */
class Jnt_HanhPhucModelService extends JModelItem
{
	public function getServiceInfo() 
	{
		$catId = JRequest::getInt('id', 0);
		$bid = JRequest::getInt('bid', 0);
		
		$db = JFactory::getDbo();
		
		$query = 'SELECT s.*, c.id as cat_id, c.title as cat_title FROM #__hp_business_service s
							 JOIN #__categories c ON c.id = s.category
						WHERE c.published = 1 AND c.id = '.$catId.' AND s.id = '.$bid;
		
		// join over location: province
		$query->select('province.title AS province_title')
				->join('INNER', '#__location_province province ON s.business_city = province.id')
		;
		
		// join over location: district
		$query->select('ward.title AS ward_title')
				->join('INNER', '#__location_ward ward ON s.business_district = ward.id')
		;
		
		$db->setQuery($query);
		
		$obj = $db->loadObject();
		
		return $obj;
	}	
	
	
}