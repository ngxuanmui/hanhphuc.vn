<?php

class NtripModelAlbum extends JModelLegacy
{
	public function getItem()
	{
		if (!$type)
			$type = $this->itemType;
		
		$id = JRequest::getInt('id', 0);
		
		// Update hits 
		if ($updateHits)
			$this->updateHits($id, $type);
		
		$db = JFactory::getDbo();
		$query = $db->getQuery(true);
		
		$query->select('a.*')
				->from('#__hp_albums' . ' a')
				->where('a.id = ' . $id)
				->where('a.state = 1');
		
		// join category
// 		$query->select('c.title AS category_title');
// 		$query->join('INNER', '#__categories c ON c.id = a.catid');
		
		// join gmap info
		// $query->select('g.*');
		// $query->join('LEFT', '#__ntrip_gmap_info g ON a.id = g.item_id AND g.item_type = "'.$type.'"');
		
		$db->setQuery($query);
		
		$item = $db->loadObject();
		
		if ($db->getErrorMsg())
		{
			die($db->getErrorMsg());
		}
				
		return $item;
	}
	
	public function getOtherImages($type = 'albums')
	{
		if (!$type)
			$type = $this->itemType;
		
		$item = $this->getItem($type, false);
		
		$db = JFactory::getDbo();
		$query = $db->getQuery(true);
		
		$query->select('*')
				->from('#__hp_images')
				->where('item_type = "' . $type . '"')
				->where('item_id = ' . (int) $item->id)
				->order('id DESC');
		
		$db->setQuery($query);
		$rs = $db->loadObjectList();
		
		if ($db->getErrorMsg())
			die($db->getErrorMsg ());
		
		return $rs;
	}
	
	public function getOtherItems($type = 'albums')
	{
		if (!$type)
			$type = $this->itemType;
		
		$db = JFactory::getDbo();
		$query = $db->getQuery(true);
		
		if (!is_object($item))
			$item = $this->getItem($type, false);
		
		$query->select('*')
				->from('#__hp_albums')
				->where('id != ' . (int) $item->id)
				->where('state = 1');
// 				->where('catid = ' . (int) $item->catid);
				
		
		$db->setQuery($query, 0, CFG_DEFAULT_NUMBER_OF_OTHER_ITEMS);
		$rs = $db->loadObjectList();
		
		if ($db->getErrorMsg())
			die($db->getErrorMsg ());
		
		return $rs;
	}
	
	protected function updateHits($itemId = 0, $itemType = '')
	{
		if (!$itemType)
			$itemType = $this->itemType;
		
		$db = JFactory::getDbo();
		$query = $db->getQuery(true);
		
		$query->update('#__ntrip_' . $itemType)->set('hits = hits + 1')->where('id = ' . $itemId);
		
		$db->setQuery($query);
		
		$db->query();
		
		if ($db->getErrorMsg())
			die ($db->getErrorMsg());
	}
}