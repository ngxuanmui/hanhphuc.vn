<?php

class FrontJntHanhphucHelper
{
	public function getUsers($catId)
	{
		$db = JFactory::getDbo();
		$query = $db->getQuery(true);
	
		$query->select('*')
				->from('#__users')
				->where('id IN (SELECT DISTINCT business_id FROM #__hp_business_service WHERE state = 1 AND category = '. (int) $catId .' ORDER BY id DESC)');
		$db->setQuery($query, 0, 6);
	
// 		echo str_replace('#__', 'hp_', $query) . '; <br>';
		
		$rs = $db->loadObjectList();
	
		return $rs;
	}
}