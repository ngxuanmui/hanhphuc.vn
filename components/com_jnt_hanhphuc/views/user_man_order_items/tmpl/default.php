<?php
/**
 * @package     Joomla.Administrator
 * @subpackage  com_jnt_hanhphuc
 *
 * @copyright   Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

// no direct access
defined('_JEXEC') or die;

JHtml::addIncludePath(JPATH_COMPONENT.'/helpers/html');

$items = $this->items;

$firstItem = NULL;

if (is_array($items))
    $firstItem = $items[0];
?>

<div class="container">
    <div class="float-left left-side">
	<?php if (isset($firstItem)): ?>
	<div>
	    Order ID: <?php echo $firstItem->order_id; ?>
	    Khách hàng: <?php echo $firstItem->user_created; ?>
	</div>
	<?php endif; ?>
	    
		<div class="sub-container list-items relative">
			<div class="list-items-container" style="padding: 10px 0; margin-top: 0">
			    <form method="post" action="<?php echo JRoute::_('index.php?option=com_jnt_hanhphuc&task=order.confirm_delivered'); ?>" name="userForm">
					<table class="list-user-hotels" cellpadding="10" border="0" cellspacing="0" width="98%">
						<tr class="oven">
							<th>#</th>
							<th>Dịch vụ</th>
							<th>Chuyển hàng</th>
						</tr>
						<?php foreach ($items as $key => $item): ?>
						<tr class="<?php if (($key+1) %2 == 0) echo 'oven' ?>">
							<td>
								<?php echo $key + 1; ?>
							</td>
							<td><?php echo $item->service_name; ?></td>
							<td>
							    <?php if ($item->delivered == 1): ?>
							    [v]
							    <?php else: ?>
							    <input type="checkbox" name="delivered[]" value="<?php echo $item->id; ?>" />
							    <?php endif; ?>
							</td>
						</tr>
						<?php endforeach; ?>
						<tr>
							<td colspan="5">							
							</td>
						</tr>
					</table>
					<div class="clear">
						<div class="pagination fltleft" style="background: #fff;"><?php echo $this->pagination->getPagesLinks();//$this->pagination->getListFooter(); ?></div>
						<input type="hidden" name="order_id" value="<?php echo JRequest::getInt('order_id'); ?>" />
						<input type="submit" name="btn-confirm" value="Xác nhận" />
						| <a href="<?php echo JRoute::_('index.php?option=com_jnt_hanhphuc&view=user_man_orders', false); ?>">Quản lý Đơn hàng</a>
						<div class="clear"></div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<div class="float-right right-side">
		<?php echo JEUtil::loadModule('right', 'module-padding'); ?>
	</div>
</div>

<div class="clear"></div>