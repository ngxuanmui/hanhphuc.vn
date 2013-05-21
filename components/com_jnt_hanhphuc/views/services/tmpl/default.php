<?php
/**
 * @version		$Id: default.php 21097 2011-04-07 15:38:03Z dextercowley $
 * @package		Joomla.Site
 * @subpackage	com_contact
 * @copyright	Copyright (C) 2005 - 2011 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 */

// no direct access
defined('_JEXEC') or die;

$user = $this->user_info;
?>

<div class="container">
    <div class="float-left left-side">
		<div class="sub-container">
			<div><?php echo $user->name; ?></div>
			
			<div><?php echo $user->info->content; ?></div>
			
			<div class="services-list">
				<ul>
					<?php foreach($this->items as $item):?>
					<li>
						<div class="service-business-detail">
							<h1>
								<a href="<?php echo JRoute::_('index.php?option=com_jnt_hanhphuc&view=service&id='.$item->category.'&bid='.$item->id)?>">
									<?php echo $item->name; ?>
								</a>
							</h1>
						</div>
					</li>
					<?php endforeach;?>
					
					<?php echo $this->pagination->getPagesLinks()?>
				</ul>
			</div>
		</div>
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
