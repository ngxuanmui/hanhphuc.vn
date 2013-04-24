<?php
/**
 * @version		$Id: articles.php $
 * @package		Joomla.Site
 * @subpackage	com_je_content
 * @copyright	Copyright (C) 2005 - 2010 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 * @author		muinx
 * This component was generated by http://joomlavietnam.net/ - 2012
 */

// No direct access
defined('_JEXEC') or die;

jimport('joomla.application.component.modellist');
jimport('joomla.application.component.helper');

/**
 * Articles model for the je_content component.
 *
 * @package		Joomla.Site
 * @subpackage	com_je_content
 * @since		1.6
 */
class JE_ContentModelCategory extends JModelList
{
	protected function populateState($ordering = null, $direction = null)
	{
		$id = JRequest::getInt('id');
		$this->setState('filter.category_id', $id);
		
		$this->setState('list.start', JRequest::getUInt('limitstart', 0));
		
		$limit = 10;
		$this->setState('list.limit', $limit);
	}
	
	/**
	 * Gets a list of articles
	 *
	 * @return	array	An array of articles objects.
	 * @since	1.6
	 */
	function getListQuery()
	{
	    $db			= $this->getDbo();
	    $query		= $db->getQuery(true);

	    $query->select(
		    'a.id, a.catid, a.title, a.alias, a.introtext, a.images'
	    );

	    $query->from('`#__je_content` a');

	    // Join over the categories
	    $query->select('c.title AS category_title');
	    $query->join('INNER', '#__categories AS c ON c.id = a.catid');

	    // Filter by start and end dates.
	    $nullDate = $db->Quote($db->getNullDate());
	    $nowDate = $db->Quote(JFactory::getDate()->toSQL());

	    $query->where('(a.publish_up = ' . $nullDate . ' OR a.publish_up <= ' . $nowDate . ')');
	    $query->where('(a.publish_down = ' . $nullDate . ' OR a.publish_down >= ' . $nowDate . ')');

	    // Filter by category
	    $catid = JRequest::getInt('id');

	    if ($catid)
		$query->where ('a.catid = ' . $catid . ' OR a.catid IN (SELECT id FROM #__categories WHERE parent_id = '. (int) $catid .')');
	    
	    $query->where('extension = "com_je_content"');
	    
	    $query->order('a.id DESC');
	    
//	    echo str_replace('#__', 'hp_', $query);

	    return $query;
	}
	
	public function getCategory()
	{
		$id = $this->getState('filter.category_id');
		
		jimport('joomla.application.categories');
		
		$cat = JCategories::getInstance('JE_Content', array('extension' => 'com_je_content', 'table' => ''));
		
		$category = $cat->get($id);
		
		return $category;
	}
}