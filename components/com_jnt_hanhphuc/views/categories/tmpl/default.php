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
									Avatar
								</div>
								<div class="fltlft info">
									<a class="title" href="<?php echo JRoute::_('index.php?option=com_jnt_hanhphuc&view=services&user='.$user->id.'-'.$user->username); ?>">
										<?php echo $user->name; ?>
									</a>
									<p>Địa chỉ: </p>
									<p>Số điện thoại: </p>
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