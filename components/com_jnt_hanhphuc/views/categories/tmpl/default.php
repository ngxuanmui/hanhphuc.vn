<?php

// No direct access
defined('_JEXEC') or die;

$categories = $this->categories;
?>

<div class="container">
    <div class="float-left left-side">
		<div class="sub-container">
			<?php echo JEUtil::loadModule('jnt_hanhphuc_search_form'); ?>
		</div>
		
		<div class="sub-container">
			<div>
				<ul class="list-service-categories">
					<?php foreach ($categories as $cat): ?>
					<li>
						<h1 class="category-title"><?php echo $cat->title; ?></h1>
						<div class="line-break-news"><span></span></div>
						<ul class="list-service-items fltlft">
							<?php foreach ($cat->users as $user): ?>
							<li class="fltlft">
								<div class="image fltlft">
									<?php
									$userLogo = $user->business_logo;
									
									if ($userLogo):
									?>
									<img src="<?php echo JURI::base(); ?>images/business/<?php echo $user->business_logo; ?>" />
									<?php else: ?>
									<img src="<?php echo JURI::base(); ?>images/no_business_logo.png" />
									<?php endif; ?>
								</div>
								<div class="fltlft info">
									<h3>
										<a class="title" href="<?php echo JRoute::_('index.php?option=com_jnt_hanhphuc&view=services&user='.$user->id.'-'.$user->username); ?>">
											<?php echo $user->name; ?>
										</a>
									</h3>
									<?php 
									if (!empty($user->subname)):
									?>
									<p><?php echo '<strong>' . $user->subname . '</strong>'; ?></p>
									<?php endif; ?>
									
									<p><strong>Địa chỉ</strong>: <?php echo $user->address . ', ' . $user->district_title . ', ' . $user->province_title; ?></p>
									<p><strong>Số điện thoại</strong>: <?php echo $user->phone; ?></p>
								</div>
								<div class="clr"></div>
							</li>
							<?php endforeach; ?>
						</ul>
						<div class="clr"></div>
					</li>
					<?php endforeach; ?>
				</ul>
			</div>
		</div>
	</div>
	<div class="float-right right-side">
		<?php echo JEUtil::loadModule('right', 'module-padding'); ?>
    </div>
</div>

<div class="clr"></div>