<?php

class FrontJntHanhphucHelper
{
	public function getUsers($catId, $getQuery = false, $limit = 6)
	{
		$db = JFactory::getDbo();
		$query = $db->getQuery(true);

		$query->select('DISTINCT u.id, u.*')
				->from('#__users u')
// 				->where('id IN (SELECT DISTINCT business_id FROM #__hp_business_service WHERE state = 1 AND category = '. (int) $catId .' ORDER BY id DESC)')
				->join('INNER', '#__hp_business_service i ON u.id = i.business_id')
				->where('i.category = ' . $catId . ' OR i.category IN (SELECT id FROM #__categories WHERE parent_id = '.$catId.')')
				->order('u.id DESC')
		;
		
// 		echo str_replace('#__', 'hp_', $query) . '; <br>';

		if ($getQuery)
			return $query;
		
		$db->setQuery($query, 0, $limit);

		$rs = $db->loadObjectList();

		return $rs;
	}

	public static function checkUserPermissionOnItem($id, $table = '#__hp_albums', $pk = 'id')
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
				->from('#__hp_images')
				->where('item_id = ' . $itemId)
				->where('item_type = "'.$itemType.'"');

		$db->setQuery($query);
		$rs = $db->loadObjectList('id');

		return $rs;
	}

	public static function getProvinces()
	{
		$db = JFactory::getDbo();
		$query = $db->getQuery(true);

		$query->select('*')->from('#__location_province')->where('state = 1');

		$db->setQuery($query);
		$rs = $db->loadObjectList('id');

		if ($db->getErrorMsg())
			die ($db->getErrorMsg());

		return $rs;
	}
}