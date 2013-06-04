<?php
/**
 * @version		$Id: default.php 21020 2011-03-27 06:52:01Z infograf768 $
 * @package		Joomla.Site
 * @subpackage	com_content
 * @copyright	Copyright (C) 2005 - 2011 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 */

// no direct access
defined('_JEXEC') or die;

JHtml::addIncludePath(JPATH_COMPONENT.DS.'helpers');

// Create shortcuts to some parameters.
$serviceInfo = $this->serviceInfo;
$businessInfo = $this->businessInfo;
$paymentTypeName = array(
	1 => 'Thanh toán qua tài khoản ngân hàng',
	2 => 'Thanh toán qua địa chỉ bưu điện',
	//3 => 'Thanh toán qua website nganluong'
);
?>


<div class="container view-service">
    <div class="float-left left-side view-service-left">
    	<h1><?php echo $businessInfo->profile->business_name ?></h1>
    	
    	<div class="sub-container relative">
    		<div class="fltlft images">
		    	<?php $images = json_decode($serviceInfo->image);
		    	if($images):?>
		    		<ul>
		    		<?php foreach ($images as $image):?>
		    			<li>
		    				<img width="100px" height="90px" alt="" src="<?php echo JURI::base()?>images/users/<?php echo $serviceInfo->business_id?>/services/<?php echo $serviceInfo->id?>/<?php echo $image?>">
		    			</li>
		    		<?php endforeach;?>
		    		</ul>
		    	<?php endif;?>
		    </div>
		    
		    <div class="fltrgt product-info">
		    	<h3><?php echo $serviceInfo->name?></h3>
		    	
		    	<ul class="fltlft">
		    		<li>
		    			<label>Người đăng</label>
		    			<span></span>
		    		</li>
		    		<li>
		    			<label>Danh mục</label>
		    			<span></span>
		    		</li>
		    		<li>
		    			<label>Giá cũ</label>
		    			<span><?php echo $serviceInfo->price?></span>
		    		</li>
		    		<li>
		    			<label>Giá mới</label>
		    			<span><?php echo $serviceInfo->current_price?></span>
		    		</li>
		    		<li>
		    			<label>Khuyến mại</label>
		    			<span><?php echo empty($serviceInfo->promotion) ? 'Không' : $serviceInfo->promotion?></span>
		    		</li>
		    		<li>
		    			<label>Hình thức thanh toán</label>
		    			<div>
		    				<?php $paymentTypes = json_decode($serviceInfo->payment_type);
			    			if($paymentTypes):
			    			?>
			    			<ul>
			    			<?php foreach ($paymentTypes as $type):?>
			    				<li><?php echo $paymentTypeName[$type]?></li>
			    			<?php endforeach;?>
			    			</ul>
			    			<?php else:?>
			    			<div>Không có</div>
			    			<?php endif;?>
		    			</div>
		    		</li>
		    	</ul>
		    
		    <form id="add-service-to-cart" name="add-service-to-cart" action="<?php echo JRoute::_('index.php?option=com_jnt_hanhphuc&task=cart.add') ?>" method="post">
	            <input type="hidden" name="option" value="com_jnt_hanhphuc"/>
	            <input type="hidden" name="task" value="cart.add"/>
	            <input type="hidden" name="id" value="<?php echo $serviceInfo->id ?>"/>
	            <input type="hidden" name="qty" value="1" size="5"/>
	            <input type="submit" value="Thêm vào giỏ hàng"/>
	        </form>
		    	
		    	
		    </div>
		    
		    <div class="clr"></div>
		    
    	</div>
    	
    	<ul class="tabs">
    		<li rel="tab-1">Thông tin sản phẩm</li>
    		<li rel="tab-2">Thông tin liên hệ</li>
    		<li rel="tab-3">Bản đồ</li>
    	</ul>
    	
    	<ul class="tab-content">
    		<li rel="tab-content-1">
    			<?php echo $serviceInfo->description?>
    		</li>
    		<li rel="tab-content-2">
    			<ul>
					<li>
						Địa chỉ: <?php echo $businessInfo->profile->business_address?>
						<br/>
						<?php echo $businessInfo->profile->business_village?> - <?php echo $businessInfo->profile->business_district?> - <?php echo $businessInfo->profile->business_city?>
					</li>
					<li>
						Email: <?php echo $businessInfo->email?>
					</li>
					<li>
						Điện thoại: <?php echo $businessInfo->profile->business_phone?>
					</li>
				</ul>
    		</li>
    		<li rel="tab-content-3">
    			Bản đồ đang được cập nhật
    		</li>
    	</ul>
    	
    </div>
    <div class="float-right right-side">
		<?php echo JEUtil::loadModule('right', 'module-padding'); ?>
		
		<div class="module-title module-padding">THÔNG TIN KHUYẾN MẠI</div>
		<div class="line-break-promotion"><span></span></div>
		<div class="box">
			<ul class="news-other-list">
				<li>
					Áo cưới: ....
				</li>
			</ul>
		</div>
		
		<div class="module-title module-padding">DOANH NGHIỆP TIÊU BIỂU</div>
		<div class="line-break"></div>
		<div class="box">
			<ul>
				<li>
					<div class="img">
						img here
					</div>
					<div class="bussiness-focus-info">
						<p class="title">Áo cưới</p>
						<p class="address">Địa chỉ</p>
						<p class="phone">Điện thoại</p>
					</div>
				</li>
			</ul>
		</div>
    </div>
</div>

<div class="clr"></div>
