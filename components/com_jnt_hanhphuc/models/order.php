<?php

class Jnt_HanhphucModelOrder extends JModelLegacy
{
    public function confirmDelivered($delivered)
    {
	$db = JFactory::getDbo();
	$query = $db->getQuery(true);
	
	foreach ($delivered as $d)
	{
	    $query->clear();
	    
	    $query->update('#__hp_order_items')
		    ->set('delivered = 1')
		    ->where('id = ' . $d)
		    ->where('business_id = ' . JFactory::getUser()->id);
	    
	    $db->setQuery($query);
	    $db->query();
	    
	    if ($db->getErrorMsg())
		die ($db->getErrorMsg ());
	}
	
	return true;
    }
}