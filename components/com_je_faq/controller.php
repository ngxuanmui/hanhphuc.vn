<?php
/**
 * @version		$Id: controller.php 18212 2010-07-22 06:02:54Z eddieajau $
 * @package		Joomla.Site
 * @subpackage	com_contact
 * @copyright	Copyright (C) 2005 - 2010 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 */

// No direct access
defined('_JEXEC') or die;

jimport('joomla.application.component.controller');

/**
 * Contact Component Controller
 *
 * @package		Joomla.Site
 * @subpackage	com_contact
 * @since 1.5
 */
class je_faqController extends JController
{
	protected $default_view = 'faqs';
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
		$cachable = true;
		
		$safeurlparams = array('catid'=>'INT','id'=>'INT','cid'=>'ARRAY','year'=>'INT','month'=>'INT','limit'=>'INT','limitstart'=>'INT',
			'showall'=>'INT','return'=>'BASE64','filter'=>'STRING','filter_order'=>'CMD','filter_order_Dir'=>'CMD','filter-search'=>'STRING','print'=>'BOOLEAN','lang'=>'CMD');
				
		parent::display($cachable,$safeurlparams);

		return $this;
	}
}
