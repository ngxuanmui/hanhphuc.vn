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

jimport('joomla.application.component.modellist');

/**
 * @package		Joomla.Site
 * @subpackage	com_contact
 */
class Jnt_HanhPhucModelServices extends JModelList
{
	protected function populateState($ordering = null, $direction = null)
	{
		parent::populateState($ordering, $direction);
		
		// List state information
		$value = JRequest::getUInt('limitstart', 0);
		$this->setState('list.start', $value);
		
		$id = JRequest::getInt('id', 0);
		$this->setState('filter.category_id', $id);
		
		$userId = JRequest::getInt('user', 0);
		$this->setState('filter.user_id', $userId);
		
		if (empty($userId))
			$defaultValue = 40;
		else 
			$defaultValue = 8;
		
		$value = JRequest::getUInt('limit', $defaultValue);
		$this->setState('list.limit', $value);
	}
	
	/**
	 * Constructor.
	 * @param	array	An optional associative array of configuration settings.
	 * @see		JController
	 * @since	1.6
	 */
	public function __construct($config = array())
	{
		if (empty($config['filter_fields'])) {
			$config['filter_fields'] = array(
				
			);
		}

		parent::__construct($config);
	}

	/**
	 * Method to build an SQL query to load the list data.
	 *
	 * @return	string	An SQL query
	 * @since	1.6
	 */
	protected function getListQuery() {
		
		$id = $this->getState('filter.category_id');
		
		$query = "SELECT s.*, c.id as cat_id, c.title as cat_title 
				  FROM  #__hp_business_service s 
				  	  	JOIN #__categories c ON s.category = c.id 
				  WHERE c.published = 1 AND s.state = 1";
		
		if ($id)
			$query .= " AND c.id = " . $id;
		
		$userId = $this->getState('filter.user_id');
		
		if ($userId)
			$query .= ' AND business_id = ' . $userId;
		
// 		echo str_replace('#__', 'hp_', $query);
		
// 		$db = JFactory::getDbo();
// 		$db->setQuery($query);
		
// 		$rs = $db->loadObjectList();
		
// 		if ($db->getErrorMsg())
// 			die ($db->getErrorMsg());
	
        return $query;
	}
	
	public function getItems()
	{
		$items = parent::getItems();
				
		foreach ($items as & $item)
		{
			$img = json_decode($item->image);
			
			$item->img = '';
			
			if (!empty($img[0]))
			{
				$item->img = $img[0];
			}
		}
		
		return $items;
	}
	
	
	public function getCategory($id = 0) 
	{
		$id = $this->getState('filter.category_id');
		
		jimport('joomla.application.categories');
		
		$cat = JCategories::getInstance('Jnt_Hanhphuc', array('extension' => 'com_jnt_hanhphuc', 'table' => ''));
		
		$category = $cat->get($id);
		
		return $category;
	}
	
	public function getUserInfo()
	{
		$userId = $this->getState('filter.user_id');
		
		$user = JFactory::getUser($userId);
		
		$db = JFactory::getDbo();
		$query = $db->getQuery(true);
		
		$query->select('*')->from('#__hp_business_info')->where('business_id = ' . $userId);
		$db->setQuery($query);
		
		$info = $db->loadObject();
		
		$user->info = $info;
		
		// get profile
		$query = $db->getQuery(true);
		
		$query->select('p.*')->from('#__hp_business_profile p')->where('p.user_id = ' . $userId);
		$query->select('n.nick_yahoo, n.nick_skype, n.nick_fb, n.nick_yahoo_alias, n.nick_skype_alias, n.nick_fb_alias');
		$query->join('LEFT', '#__hp_business_nicks n ON p.user_id = n.user_id');
		
		// join over location: province
		$query->select('province.title AS province_title')
		->join('INNER', '#__location_province province ON p.business_city = province.id')
		;
		
		// join over location: district
		$query->select('ward.title AS ward_title')
		->join('INNER', '#__location_ward ward ON p.business_district = ward.id')
		;
		
		$db->setQuery($query);
		
		$profile = $db->loadObject();
		
		if ($db->getErrorMsg())
			die ($db->getErrorMsg());
		
		$user->profile = $profile;
		
		return $user;
	}
}
