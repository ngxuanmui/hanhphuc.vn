<?php
/**
 * components/com_wedding/views/templates/view.html.php
 * @author 		: Phạm Văn An
 * @version 	: 1.0
*/
 
// no direct access 
defined( '_JEXEC' ) or die( 'Restricted access' );
 
jimport( 'joomla.application.component.view'); 
 
class weddingViewTemplates extends JView
{
    function display($tpl = null)
    {
//    	JToolBarHelper::addNew();
//    	JToolBarHelper::editListX();
//    	JToolBarHelper::publishList();
//    	JToolBarHelper::unpublishList();
//    	JToolBarHelper::deleteListX(JText::_('COM_WEDDING_DELETE_APPS_CONFIRM'));
    	
    	$model = & $this->getModel();
    	$items = & $model->getItems();
    	$pagination = $model->getPagination();
		
		$this->state		= $this->get('State');
		
		$this->addToolbar();
    	
    	$this->assignRef('items', $items);
    	$this->assignRef('pagination', $pagination);
    	
    	parent::display($tpl);
    }
    
//    function edit($tpl = null)
//    {
//    	JToolBarHelper::save();
//    	JToolBarHelper::apply();
//    	JToolBarHelper::cancel();
//    	
//    	$cid = JRequest::getVar('cid', array(0), '', 'array');
//    	JArrayHelper::toInteger($cid);
//    	$id = $cid[0];
//    	if($id <= 0) $item = null;    	
//    	else
//    	{
//    		require_once(JPATH_COMPONENT.DS.'helpers'.DS.'template.php');
//    		$item = templateHelpers::getTemplate($id);
//    	}
//    	
//    	$this->assignRef('item', $item);
//    	
//    	parent::display($tpl);
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
		JToolBarHelper::title(JText::_('COM_WEDDING_MANAGER_TEMPLATES'), 'templates.png');
		if ($canDo->get('core.create'))
		{
			JToolBarHelper::addNew('template.add');
		}

		if (($canDo->get('core.edit')))
		{
			JToolBarHelper::editList('template.edit');
		}

		if ($canDo->get('core.edit.state'))
		{
			if ($this->state->get('filter.state') != 2)
			{
				JToolBarHelper::divider();
				JToolBarHelper::publish('templates.publish', 'JTOOLBAR_PUBLISH', true);
				JToolBarHelper::unpublish('templates.unpublish', 'JTOOLBAR_UNPUBLISH', true);
			}

			if ($this->state->get('filter.state') != -1)
			{
				JToolBarHelper::divider();
				if ($this->state->get('filter.state') != 2)
				{
					JToolBarHelper::archiveList('templates.archive');
				}
				elseif ($this->state->get('filter.state') == 2)
				{
					JToolBarHelper::unarchiveList('templates.publish');
				}
			}
		}

		if ($canDo->get('core.edit.state'))
		{
			JToolBarHelper::checkin('templates.checkin');
		}

		if ($this->state->get('filter.state') == -2 && $canDo->get('core.delete'))
		{
			JToolBarHelper::deleteList('', 'templates.delete', 'JTOOLBAR_EMPTY_TRASH');
			JToolBarHelper::divider();
		}
		elseif ($canDo->get('core.edit.state'))
		{
			JToolBarHelper::trash('templates.trash');
			JToolBarHelper::divider();
		}

		if ($canDo->get('core.admin'))
		{
			JToolBarHelper::preferences('com_wedding');
			JToolBarHelper::divider();
		}
		JToolBarHelper::help('JHELP_COMPONENTS_BANNERS_BANNERS');
	}
}