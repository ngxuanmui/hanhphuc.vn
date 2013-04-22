<?php

class FrontJntHanhphucHelper
{
	public function getUsers($catId)
	{
		$db = JFactory::getDbo();
		$query = $db->getQuery(true);
	
		$query->select('*')
				->from('#__users')
				->where('id IN (SELECT DISTINCT business_id FROM #__hp_business_service WHERE state = 1 AND category = '. (int) $catId .')');
		$db->setQuery($query);
	
		$rs = $db->loadObjectList();
	
		return $rs;
	}
}