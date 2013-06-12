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
	
	public static function checkUserPermissionOnItem($id, $table = '#__ntrip_hotels', $pk = 'id')
	{
		$db = JFactory::getDbo();
		$query = $db->getQuery(true);
	
		$userId = JFactory::getUser()->id;
	
		$query->select('id')->from($table)->where($pk.' = '.$id)->where('created_by = ' . (int) $userId);
	
		$db->setQuery($query);
		$result = $db->loadResult();
	
		if ($result)
			return true;
	
		return false;
	}
	
	static function getImages($itemId, $itemType = 'hotels')
	{
		$db = JFactory::getDbo();
		$query = $db->getQuery(true);
		 
		$query->select('*')
		->from('#__ntrip_images')
		->where('item_id = ' . $itemId)
		->where('item_type = "'.$itemType.'"');
		 
		$db->setQuery($query);
		$rs = $db->loadObjectList('id');
		 
		return $rs;
	}
}