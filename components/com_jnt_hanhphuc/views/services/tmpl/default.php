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
$profile = $user->profile;

?>

<div class="container">
    <div class="float-left left-side">
		<div class="sub-container list-services relative">
			<h1><?php echo $user->name; ?></h1>
			
			<div class="business-intro-desc">
			
				<?php if ($profile->business_logo != ''): ?>
				<div class="business-logo">
					<img src="<?php echo JURI::base();?>images/business/<?php echo $profile->business_logo; ?>" />
				</div>				
				<?php endif; ?>
				
				<?php echo $user->info->content; ?>
				
				<div>
					Liên hệ Skype: <a href="skype:echo123?call" class="skype">Nick skype</a>, 
					Yahoo: <a href="ymsgr:SendIM?jerome_107" class="yahoo">Nick Yahoo</a>
				</div>
			</div>
			
				
			
			<div class="services-list relative">
				
				<div class="seperator absolute"></div>
				
				<h2>SẢN PHẨM VÀ DỊCH VỤ</h2>
				<ul class="items">
					<?php foreach($this->items as $item):?>
					<li class="service-business-detail">
							<a title="<?php echo htmlspecialchars($item->name); ?>" href="<?php echo JRoute::_('index.php?option=com_jnt_hanhphuc&view=service&id='.$item->category.'&bid='.$item->id)?>">
								<?php if ($item->img): ?>
								<div class="img">
									<img src='<?php echo JURI::base()?>images/users/<?php echo $user->id?>/services/<?php echo $item->id?>/<?php echo $item->img; ?>' />
								</div>
								<?php else: ?>
								NO IMAGE
								<?php endif; ?>
							</a>
					</li>
					<?php endforeach;?>
				</ul>
				
				<div class="clr"></div>
				
				<div class="pagination">
					<?php echo $this->pagination->getPagesLinks()?>
				</div>
				
				<div class="clr"></div>
			</div>
			
			<div class="business-info relative">
				
				<div class="seperator absolute"></div>
				
				<div class="business-profile">
					<ul>
						<li>
							<h3><?php echo $profile->business_name; ?></h3>
						</li>
						<li>
							<label>Địa chỉ</label>
							<span>
								: <?php echo $profile->business_address; ?>, <?php echo $profile->business_district; ?>, <?php echo $profile->business_city; ?>
							</span>
						</li>
						<li>
							<label>Số điện thoại</label>
							<span>
								: <?php echo $profile->business_phone; ?>
							</span>
						</li>
						<li>
							<label>Fax</label>
							<span>
								: <?php echo $profile->business_fax; ?>
							</span>
						</li>
						<li>
							<label>Email</label>
							<span>
								: <?php echo $user->email; ?>
							</span>
						</li>
						<li>
							<label>Website</label>
							<span>
								: <?php echo $profile->business_website; ?>	
							</span>
						</li>
					</ul>
					<div class="clr"></div>
				</div>
			</div>
		</div>
	</div>
	
	<div class="float-right right-side">
		<?php echo JEUtil::loadModule('right', 'module-padding'); ?>
    </div>
</div>

<div class="clr"></div>
