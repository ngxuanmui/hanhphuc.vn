<?php
class WeddingTableAlbum extends JTable 
{
	function __construct(&$db)
	{
		parent::__construct('#__wedding_albums', 'id', $db);
	}
}