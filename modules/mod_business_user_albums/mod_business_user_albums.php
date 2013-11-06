<?php
/**
 * @package		Joomla.Site
 * @subpackage	mod_business_user_albums
 * @copyright	Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 */

// no direct access
defined('_JEXEC') or die;

$user = JFactory::getUser();

require JModuleHelper::getLayoutPath('mod_business_user_albums', $params->get('layout', 'default'));
