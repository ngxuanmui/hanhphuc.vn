<?php
/**
 * components/com_wedding/views/users/view.html.php
 * @author 		: Phạm Văn An
 * @version 	: 1.0
*/
 
// no direct access 
defined( '_JEXEC' ) or die( 'Restricted access' );
 
jimport( 'joomla.application.component.view'); 
 
class weddingViewStories extends JView
{
    function display($tpl = null)
    {
//    	JToolBarHelper::publishList();
//    	JToolBarHelper::unpublishList();
    	
    	$model = & $this->getModel();
    	$items = & $model->getItems();
    	$pagination = $model->getPagination();
		
		$this->state = $this->get('State');
    	
    	$this->assignRef('items', $items);
    	$this->assignRef('pagination', $pagination);
		
		$this->addToolbar();
    	
    	return parent::display($tpl);
    }
    
//    function details($tpl = null)
//    {
//    	JToolBarHelper::back('Quay lại');
//    	
//    	$model = & $this->getModel();
//    	$item = $model->getItem();
//    	$this->assignRef('item', $item);
//    	
//    	return parent::display($tpl);
//    }
	
	/**
	 * Add the page title and toolbar.
	 *
	 * @return  void
	 *
	 * @since   1.6
	 */
	protected function addToolbar()
	{
		require_once JPATH_COMPONENT . '/helpers/wedding.php';

		$canDo = WeddingHelper::getActions($this->state->get('filter.category_id'));
		$user = JFactory::getUser();
		JToolBarHelper::title(JText::_('COM_WEDDING_MANAGER_STORIES'), 'stories.png');
		
		if ($canDo->get('core.edit.state'))
		{
			if ($this->state->get('filter.state') != 2)
			{
//				JToolBarHelper::divider();
				JToolBarHelper::publish('stories.publish', 'JTOOLBAR_PUBLISH', true);
				JToolBarHelper::unpublish('stories.unpublish', 'JTOOLBAR_UNPUBLISH', true);
			}

			if ($this->state->get('filter.state') != -1)
			{
				JToolBarHelper::divider();
				if ($this->state->get('filter.state') != 2)
				{
					JToolBarHelper::archiveList('stories.archive');
				}
				elseif ($this->state->get('filter.state') == 2)
				{
					JToolBarHelper::unarchiveList('stories.publish');
				}
			}
		}

		if ($canDo->get('core.edit.state'))
		{
			JToolBarHelper::checkin('stories.checkin');
		}

		if ($this->state->get('filter.state') == -2 && $canDo->get('core.delete'))
		{
			JToolBarHelper::deleteList('', 'stories.delete', 'JTOOLBAR_EMPTY_TRASH');
			JToolBarHelper::divider();
		}
		elseif ($canDo->get('core.edit.state'))
		{
			JToolBarHelper::trash('stories.trash');
			JToolBarHelper::divider();
		}

		if ($canDo->get('core.admin'))
		{
			JToolBarHelper::preferences('com_wedding');
		}
	}
}