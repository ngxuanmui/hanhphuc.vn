<?php

// No direct access
defined('_JEXEC') or die;

?>

<div class="container">
    <div class="float-left left-side">
		<div class="sub-container">
			<?php echo JEUtil::loadModule('jnt_hanhphuc_search_form'); ?>
		</div>
		
		<div class="sub-container">
			<div>
				<ul class="list-service-categories">
					<li>
						<h1 class="category-title">Kết quả tìm kiếm</h1>
						<div class="line-break-news"><span></span></div>
						<ul class="list-service-items fltlft">
							<?php foreach ($this->items as $user): ?>
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
							<?php if (empty($this->items)): ?>
							<li>Xin lỗi bạn. Không có kết quả phù hợp.</li>
							<?php endif; ?>
						</ul>
						<div class="clr"></div>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<div class="float-right right-side">
		<?php echo JEUtil::loadModule('right', 'module-padding'); ?>
    </div>
</div>

<div class="clr"></div>