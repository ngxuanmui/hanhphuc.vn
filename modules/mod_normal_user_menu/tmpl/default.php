<?php
/**
 * @package		Joomla.Site
 * @subpackage	mod_business_user_menu
 * @copyright	Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 */

// no direct access
defined('_JEXEC') or die;
?>

<ul class="menu business-user-menu">
	<li>
	    <a href="<?php echo JRoute::_('index.php?option=com_users&view=profile&layout=edit', false); ?>">
		Quản lý tài khoản
	    </a>
	</li>
	<li>
	    <a href="<?php echo JRoute::_('index.php?option=com_users&view=user_man_orders', false); ?>">
		Quản lý Đơn hàng
	    </a>
	</li>
</ul>
