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
	1 => 'Tài khoản ngân hàng',
	2 => 'Địa chỉ bưu điện',
	//3 => 'Thanh toán qua website nganluong'
);

?>

<style>
      #map_canvas {
        width: 590px;
        height: 400px;
      }
    </style>
    
<div class="container view-service">
	
    <div class="float-left left-side view-service-left">
    	<h1><?php echo $businessInfo->profile->business_name ?></h1>
    	
	    <div class="sub-container">
	    	<div class="relative">
	    		<div class="fltlft images">
			    	<?php $images = json_decode($serviceInfo->image);
			    	if($images):?>
			    		<ul>
			    		<?php foreach ($images as $image):?>
			    			<li>
			    				<img alt="" src="<?php echo JURI::base()?>images/users/<?php echo $serviceInfo->business_id?>/services/<?php echo $serviceInfo->id?>/<?php echo $image?>">
			    			</li>
			    		<?php endforeach;?>
			    		</ul>
			    	<?php endif;?>
			    </div>
			    
			    <div class="fltlft service-info" style="width: 410px;">
			    	<h3><?php echo $serviceInfo->name?></h3>
			    	
			    	<ul class="fltlft">
			    		<li>
			    			<label>Người đăng</label>
			    			<span>: </span>
			    		</li>
			    		<li>
			    			<label>Danh mục</label>
			    			<span>: </span>
			    		</li>
                        <?php if (intval($serviceInfo->price) > 0): ?>
			    		<li>
			    			<label>Giá cũ</label>
			    			<span>: <?php echo $serviceInfo->price?></span>
			    		</li>
                        <?php endif; ?>
                        <?php if (intval($serviceInfo->current_price) > 0): ?>
			    		<li>
			    			<label>Giá mới</label>
			    			<span>: <?php echo $serviceInfo->current_price?></span>
			    		</li>
                        <?php endif; ?>
			    		<li>
			    			<label>Khuyến mại</label>
			    			<span>: <?php echo empty($serviceInfo->promotion) ? 'Không' : $serviceInfo->promotion?></span>
			    		</li>
                        <?php if (intval($serviceInfo->current_price) > 0): ?>
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
                        <?php endif; ?>
			    	</ul>
			    
			    <?php if ($serviceInfo->current_price >= 0): ?>
			    <form id="add-service-to-cart" name="add-service-to-cart" action="<?php echo JRoute::_('index.php?option=com_jnt_hanhphuc&task=cart.add') ?>" method="post">
		            <input type="hidden" name="option" value="com_jnt_hanhphuc"/>
		            <input type="hidden" name="task" value="cart.add"/>
		            <input type="hidden" name="id" value="<?php echo $serviceInfo->id ?>"/>
		            <input type="text" name="qty" value="1" size="5"/>
		            <button type="submit">
		            	Thêm vào giỏ hàng
		            </button>
		        </form>
			    <?php endif; ?>
			    	
			    </div>
			    
			    <div class="clr"></div>
			    
	    	</div>
	    	
	    	<ul class="tabs">
	    		<li rel="tab-1" class="active">Thông tin sản phẩm</li>
	    		<li rel="tab-2">Thông tin liên hệ</li>
	    		<?php /* <li rel="tab-3">Bản đồ</li> */ ?>
	    	</ul>
	    	
	    	<div class="clr"></div>
	    	
	    	<ul class="tab-content-container">
	    		<li rel="tab-content-1" class="tab-content tab-display">
	    			<?php echo $serviceInfo->description?>
                    
                    <div class="has-map">
                        <div id="map_canvas"></div>
                    </div>
	    		</li>
	    		<li rel="tab-content-2" class="tab-content">
	    			<div class="business-info relative">
						<div class="business-profile">
							<ul>
								<li>
									<label>Địa chỉ</label>
									<span>
										: <?php echo $businessInfo->profile->business_address; ?> - <?php echo $businessInfo->profile->district_title; ?> - <?php echo $businessInfo->profile->province_title; ?>
									</span>
								</li>
                                <?php if (!empty($businessInfo->profile->business_phone)): ?>
								<li>
									<label>Số điện thoại</label>
									<span>
										: <?php echo $businessInfo->profile->business_phone; ?>
									</span>
								</li>
                                <?php endif; ?>
                                <?php if (!empty($businessInfo->profile->business_fax)): ?>
								<li>
									<label>Fax</label>
									<span>
										: <?php echo $businessInfo->profile->business_fax; ?>
									</span>
								</li>
                                <?php endif; ?>
                                <?php if (!empty($businessInfo->email)): ?>
								<li>
									<label>Email</label>
									<span>
										: <?php echo $businessInfo->email; ?>
									</span>
								</li>
                                <?php endif; ?>
                                <?php if (!empty($businessInfo->profile->business_website)): ?>
								<li>
									<label>Website</label>
									<span>
										: <a href="http://<?php echo $businessInfo->profile->business_website; ?>" target="_blank"><?php echo $businessInfo->profile->business_website; ?></a>	
									</span>
								</li>
                                <?php endif; ?>
                                <?php if (!empty($businessInfo->profile->business_sitename)): ?>
								<li>
									<label>Facebook</label>
									<span>
										: <a href="https://www.facebook.com/<?php echo $businessInfo->profile->business_sitename; ?>" target="_blank"><?php echo $businessInfo->profile->business_sitename; ?></a>	
									</span>
								</li>
								<?php endif; ?>
							</ul>
							<div class="clr"></div>
						</div>
					</div>
	    		</li>
	    		<li rel="tab-content-3" class="tab-content">
	    			
	    		</li>
	    	</ul>
	    </div>	
	    
	    <div class="comments relative box">
	    	<div class="seperator absolute"></div>
	    	
	    	<div class="com-comments">
	    		<?php JEUtil::showForm($serviceInfo->id, 'service', $serviceInfo->name); ?>
	    	</div>
	    </div>
    	
    </div>
    
    <div class="float-right right-side">
		<?php echo JEUtil::loadModule('right', 'module-padding'); ?>
    </div>
</div>

<div class="clr"></div>
