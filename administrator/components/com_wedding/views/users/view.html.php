<?php
/**
 * components/com_wedding/views/users/view.html.php
 * @author 		: Phạm Văn An
 * @version 	: 1.0
*/
 
// no direct access 
defined( '_JEXEC' ) or die( 'Restricted access' );
 
jimport( 'joomla.application.component.view'); 
 
class weddingViewUsers extends JView
{
	protected $state;
	
	function display($tpl = null)
    {
    	$model = & $this->getModel();
    	$items = & $model->getItems();
    	$pagination = $model->getPagination();
		
		$this->state		= $this->get('State');
    	
    	$this->assignRef('items', $items);
    	$this->assignRef('pagination', $pagination);
		
		$this->addToolbar();
    	
    	parent::display($tpl);
    }
	
	/**
	 * Add the page title and toolbar.
	 *
	 * @since	1.6
	 */
	protected function addToolbar()
	{
		$canDo		= weddingHelper::getActions($this->state->get('filter.category_id'));
		$user		= JFactory::getUser();
		JToolBarHelper::title(JText::_('Users'), 'user.png');

		if ($canDo->get('core.create') || (count($user->getAuthorisedCategories('com_wedding', 'core.create'))) > 0 ) {
			JToolBarHelper::addNew('user.add');
		}

		if (($canDo->get('core.edit')) || ($canDo->get('core.edit.own'))) {
			JToolBarHelper::editList('user.edit');
		}

		if ($canDo->get('core.edit.state')) {
			JToolBarHelper::divider();
			JToolBarHelper::publish('users.publish', 'JTOOLBAR_PUBLISH', true);
			JToolBarHelper::unpublish('users.unpublish', 'JTOOLBAR_UNPUBLISH', true);
			JToolBarHelper::divider();
			JToolBarHelper::archiveList('users.archive');
			JToolBarHelper::checkin('users.checkin');
		}

		if ($this->state->get('filter.state') == -2 && $canDo->get('core.delete')) {
			JToolBarHelper::deleteList('', 'users.delete','JTOOLBAR_EMPTY_TRASH');			
		}
		else if ($canDo->get('core.edit.state')) {
			JToolBarHelper::trash('users.trash');
		}

		if ($canDo->get('core.admin')) {
			JToolBarHelper::divider();
			JToolBarHelper::preferences('com_wedding');			
		}
	}
}