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

JHtml::addIncludePath(JPATH_COMPONENT . '/helpers/html');

$items = $this->items;

$firstItem = NULL;

if (is_array($items))
    $firstItem = $items[0];

$allowDelivered = false;
?>

<div class="container">
    <div class="float-left left-side">
	<?php if (isset($firstItem)): ?>
    	<div>
    	    Order ID: <?php echo $firstItem->order_id; ?>
    	    Khách hàng: <?php echo $firstItem->user_created; ?>
	    <p>Phương thức thanh toán: <?php echo $firstItem->payment_method_name; ?></p>
	    <p>Địa chỉ: <?php echo $firstItem->address; ?></p>
	    <p>Quận/Huyện: <?php echo $firstItem->district; ?></p>
	    <p>Tỉnh/Thành: <?php echo $firstItem->city; ?></p>
	    <p>Điện thoại: <?php echo $firstItem->phone; ?></p>
	    <p>Email: <?php echo $firstItem->email; ?></p>
    	</div>
	<?php endif; ?>

	<div class="sub-container list-items relative">
	    <div class="list-items-container" style="padding: 10px 0; margin-top: 0">
		<form method="post" action="<?php echo JRoute::_('index.php?option=com_jnt_hanhphuc&task=order.confirm_delivered'); ?>" name="userForm" enctype="multipart/form-data">
		    <?php $totalPrice = 0; ?>
		    <table class="list-user-hotels" cellpadding="10" border="0" cellspacing="0" width="98%">
			<tr class="oven">
			    <th>#</th>
			    <th>Dịch vụ</th>
			    <th>Số lượng</th>
			    <th>Giá tiền</th>
			    <th>Thành tiền</th>
			    <th>Chuyển hàng</th>
			</tr>
			<?php foreach ($items as $key => $item): ?>
    			<tr class="<?php if (($key + 1) % 2 == 0) echo 'oven' ?>">
    			    <td>
				    <?php echo $key + 1; ?>
    			    </td>
    			    <td><?php echo $item->service_name; ?></td>
			    <td><?php echo $item->qty; ?></td>
    			    <td><?php echo $item->price; ?></td>
			    <td>
				<?php 
				$price = $item->qty * $item->price;
				
				$totalPrice += $price;
				
				echo $price;
				?>
			    </td>
    			    <td>
				    <?php if ($item->delivered == 1): ?>
					[v]
					<?php
				    else:
					$allowDelivered = true;
					?>
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
		    
		    <div>
			Tổng thành tiền: <?php echo $totalPrice; ?>
		    </div>
		    
		    <?php if (!empty($this->files)): ?>
		    <div>
			<h3>File đã upload</h3>
			
			<ul>
			    <?php foreach ($this->files as $file): ?>
			    <li>
				File: <?php echo $file->file_upload; ?> 
				<?php if (!empty($file->description)): ?>
				<br>
				Chú thích: <?php echo $file->description; ?>
				<?php endif; ?>
			    </li>
			    <?php endforeach; ?>
			</ul>
			
		    </div>
		    <?php endif; ?>
		    
		    <?php if (!empty($this->notes)): ?>
		    <div>
			<h3>Ghi chú</h3>
			
			<ul>
			    <?php foreach ($this->notes as $note): ?>
			    <li><?php echo $note->note; ?></li>
			    <?php endforeach; ?>
			</ul>
			
		    </div>
		    <?php endif; ?>
		    
		    <div class="clear">
			<div>
			    Upload file: <input type="file" name="jform[file_upload]" />
			</div>
			<div>
			    Chú thích: <input type="text" name="description" />
			</div>
			<div>
			    Ghi chú
			</div>
			<div>
			    <textarea name="business_note"></textarea>
			</div>
			<div class="pagination fltleft" style="background: #fff;"><?php echo $this->pagination->getPagesLinks(); //$this->pagination->getListFooter();  ?></div>
			<input type="hidden" name="order_id" value="<?php echo JRequest::getInt('order_id'); ?>" />
			<?php /*if ($allowDelivered):*/ ?>
    			<input type="submit" name="btn-confirm" value="Cập nhật" />
    			| 
			<?php /*endif;*/ ?>
			<a href="<?php echo JRoute::_('index.php?option=com_jnt_hanhphuc&view=user_man_orders', false); ?>">Quản lý Đơn hàng</a>
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