<?php

class Hp_CommentModelComment extends JModelLegacy
{
	public function getListComments($itemId, $itemType, $title = '')
	{
		$db = JFactory::getDbo();
		$query = $db->getQuery(true);
		
		$query->select('c.*')
				->select('(SELECT COUNT(id) FROM #__hp_comments WHERE item_type = "'.$itemType.'" AND item_id = '.(int) $itemId.') AS count_comment')
				->from('#__hp_comments c')
				->select('u.username')
				->join('LEFT', '#__users u ON c.created_by = u.id')
				->where('c.item_type = ' . $db->quote($itemType))
				->where('c.item_id = ' . $itemId)
				->where('c.parent_id = 0')
				->where('c.state = 1')
				->order('c.id ASC')
			;
// 		echo $query->dump();
// 		echo str_replace('#__', 'jos_', $query);
		
		$db->setQuery($query);
		$rs = $db->loadObjectList();
		
		if ($db->getErrorMsg())
			die ($db->getErrorMsg());
		
		// load sub comment
		foreach ($rs as & $comment)
		{
			$query->clear()
					->select('c.*, ' . $db->quote($title) . ' AS item_title')
					->from('#__hp_comments c')
					->select('u.username')
					->join('LEFT', '#__users u ON c.created_by = u.id')
// 					->where('c.item_type = ' . $db->quote($itemType))
// 					->where('c.item_id = ' . $itemId)
					->where('c.parent_id = ' . $comment->id)
// 					->where('c.state = 1')
					->order('c.id ASC')
				;
			
			$db->setQuery($query);
			$comment->subComments = $db->loadObjectList();
		}
		
		return $rs;
	}

	public function save($itemId, $itemType, $parentId, $content, $guest = array())
	{
		$obj = new JObject();
		
		$obj->parent_id = $parentId;
		$obj->item_id	= $itemId;
		$obj->item_type = $itemType;
		$obj->content	= $content;
		$obj->state		= 0;
		$obj->created	= date('Y-m-d H:i:s');
		$obj->created_by = JFactory::getUser()->id;
		
		$user = JFactory::getUser();
		
		if ($user->guest)
		{
			$obj->guest_fullname = $guest['fullname'];
			$obj->guest_email = $guest['email'];
			$obj->guest_website = $guest['website'];
		}
		
		$db = JFactory::getDbo();
		$result = $db->insertObject('#__hp_comments', $obj, 'id');
		
		if (!$result)
			return array('error' => 1, 'msg' => $db->getErrorMsg ());
		
		return $result;
	}
}