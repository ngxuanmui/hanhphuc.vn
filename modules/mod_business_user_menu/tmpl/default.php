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
	<li class="item-238">
		<a href="<?php echo JRoute::_('index.php?option=com_jnt_hanhphuc&amp;view=intro&amp;layout=edit', false); ?>">
			Giới thiệu doanh nghiệp
		</a>
	</li>
	<li class="item-239">
		<a href="<?php echo JRoute::_('index.php?option=com_jnt_hanhphuc&amp;view=business_services', false); ?>">
			Quản lý Dịch vụ
		</a>
	</li>
	<li class="item-244">
		<a href="<?php echo JRoute::_('index.php?option=com_jnt_hanhphuc&amp;view=user_man_albums', false); ?>">
			Album ảnh
		</a>
	</li>
</ul>
