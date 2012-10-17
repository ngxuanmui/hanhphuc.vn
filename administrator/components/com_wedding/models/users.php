<?php
// no direct access 
defined( '_JEXEC' ) or die( 'Restricted access' );

jimport('joomla.application.component.modellist');
 
class weddingModelUsers extends JModelList
{
	var $_data = null;
	var $_pagination = null;
	var $_total = null;
	
	function getListQuery()
	{		
		$query = "SELECT wu.*, u.username, u.name, u.email, u.block FROM #__wedding_users wu RIGHT JOIN #__users u ON u.id = wu.user_id";
		return $query;
	}
	
	function store()
	{
		$data = JRequest::get('post');
		$row = $this->getTable('users');
		
		if( !$row->bind($data) )
		{
			$this->setError( $this->_db->getErrorMsg() );
			return false;
		}
		
		if( !$row->store() )
		{
			$this->setError( $this->_db->getErrorMsg() );
			return false;
		}
		
		JRequest::setVar('apply_id', $row->id);
		
		return true;
	}
	
	function delete()
	{
		return true;
	}
}
