<?php
/**
 * components/com_wedding/views/users/view.html.php
 * @author 		: Phạm Văn An
 * @version 	: 1.0
*/
 
// no direct access 
defined( '_JEXEC' ) or die( 'Restricted access' );
 
jimport( 'joomla.application.component.view'); 
 
class weddingViewApps extends JView
{
	protected $items;
	protected $pagination;
	protected $state;
	
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
//    	require_once(JPATH_COMPONENT.DS.'helpers'.DS.'application.php');
//    	$maxOrder = generalHelpers::getMaxOrder('#__wedding_apps');
    	
		$this->state		= $this->get('State');
    	$this->assignRef('items', $items);
    	$this->assignRef('maxOrder', $maxOrder);
    	$this->assignRef('pagination', $pagination);
		
		$this->addToolbar();
    	
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
//    		require_once(JPATH_COMPONENT.DS.'helpers'.DS.'application.php');
//    		$item = applicationHelpers::getApplication($id);
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
		JToolBarHelper::title(JText::_('COM_BANNERS_MANAGER_BANNERS'), 'banners.png');
		if (count($user->getAuthorisedCategories('com_banners', 'core.create')) > 0)
		{
			JToolBarHelper::addNew('banner.add');
		}

		if (($canDo->get('core.edit')))
		{
			JToolBarHelper::editList('banner.edit');
		}

		if ($canDo->get('core.edit.state'))
		{
			if ($this->state->get('filter.state') != 2)
			{
				JToolBarHelper::divider();
				JToolBarHelper::publish('banners.publish', 'JTOOLBAR_PUBLISH', true);
				JToolBarHelper::unpublish('banners.unpublish', 'JTOOLBAR_UNPUBLISH', true);
			}

			if ($this->state->get('filter.state') != -1)
			{
				JToolBarHelper::divider();
				if ($this->state->get('filter.state') != 2)
				{
					JToolBarHelper::archiveList('banners.archive');
				}
				elseif ($this->state->get('filter.state') == 2)
				{
					JToolBarHelper::unarchiveList('banners.publish');
				}
			}
		}

		if ($canDo->get('core.edit.state'))
		{
			JToolBarHelper::checkin('banners.checkin');
		}

		if ($this->state->get('filter.state') == -2 && $canDo->get('core.delete'))
		{
			JToolBarHelper::deleteList('', 'banners.delete', 'JTOOLBAR_EMPTY_TRASH');
			JToolBarHelper::divider();
		}
		elseif ($canDo->get('core.edit.state'))
		{
			JToolBarHelper::trash('banners.trash');
			JToolBarHelper::divider();
		}

		if ($canDo->get('core.admin'))
		{
			JToolBarHelper::preferences('com_banners');
			JToolBarHelper::divider();
		}
		JToolBarHelper::help('JHELP_COMPONENTS_BANNERS_BANNERS');
	}
}