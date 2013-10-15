<?php

?>

<div class="container">
	<div class="float-left left-side">
		<h1 class="content-title">
			Thông tin khuyến mại
		</h1>

		<div class="line-break-news"></div>

		<div class="fulltext box">

			<div id="wrapper" class="clearfix">
				<?php foreach($this->items as $item): ?>
				<div class="tack">
					<div class="tackHolder">
						<a
							href="<?php echo JRoute::_(Jnt_HanhphucHelperRoute::getArticleRoute($item->slug, $item->catid)); ?>"
							title=""><img
							src="http://wedding.jimmydang.vn/wedding/wp-content/uploads/2012/09/a1.jpg"
							alt="Bí quyết có một tiệc cưới độc đáo và ấn tượng"
							title="Bí quyết có một tiệc cưới độc đáo và ấn tượng"
							class="tack_img" /></a>
					</div>
					<p class="description">Bí quyết có một tiệc cưới độc đáo và ấn
						tượng</p>
				</div>
				<?php endforeach; ?>
			</div>
			
				<ul class="items">
				
				<li class="clr"><a
						href=""
						class="title">
					    <?php echo $this->escape($item->title); ?>
				    </a>	
				    <?php if ($item->images): ?>
				    <img src="<?php echo JURI::base().$item->images; ?>"
						style="float: left; margin-right: 10px; width: 100px;" />
				    <?php endif; ?>
				    <div class="desc">
					<?php echo $item->introtext; ?>
				    </div>

						<div class="clear"></div></li>
				
		    </ul>

				<div class="clear"></div>

				<div class="pagination">
				<?php echo $this->pagination->getPagesLinks(); ?>
			</div>

				<div class="clear"></div>

			</div>

		</div>

		<div class="float-right right-side">
		<?php echo JEUtil::loadModule('right', 'module-padding'); ?>
    </div>
	</div>

	<div class="clear"></div>