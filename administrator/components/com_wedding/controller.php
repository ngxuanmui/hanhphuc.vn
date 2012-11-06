<?php
/**
 * @copyright	Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

/**
 * Banners master display controller.
 *
 * @package		Joomla.Administrator
 * @subpackage	com_wedding
 * @since		1.6
 */
class WeddingController extends JControllerLegacy
{
	protected $default_view = 'users';
	
	/**
	 * Method to display a view.
	 *
	 * @param	boolean			If true, the view output will be cached
	 * @param	array			An array of safe url parameters and their variable types, for valid values see {@link JFilterInput::clean()}.
	 *
	 * @return	JController		This object to support chaining.
	 * @since	1.5
	 */
	public function display($cachable = false, $urlparams = false)
	{
		require_once JPATH_COMPONENT.'/helpers/wedding.php';
//		BannersHelper::updateReset();

		// Load the submenu.
		WeddingHelper::addSubmenu(JRequest::getCmd('view', 'users'));
		
		parent::display();

		return $this;
	}
}
