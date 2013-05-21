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
		
		$id = JRequest::getInt('id', 0);
		$this->setState('filter.category_id', $id);
		
		$userId = JRequest::getInt('user', 0);
		$this->setState('filter.user_id', $userId);
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
	
        return $query;
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
		
		$db = JFactory::getDbo();
		$query = $db->getQuery(true);
		
		$query->select('*')->from('#__hp_business_info')->where('business_id = ' . $userId);
		$db->setQuery($query);
		
		$info = $db->loadObject();
		
		$user = JFactory::getUser($userId);
		
		$user->info = $info;
		
		return $user;
	}
}
