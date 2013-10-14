<?php

?>

<div class="container">
	<div class="float-left left-side">
		<h1 class="content-title">
			<?php echo $this->category->title; ?>
		</h1>

		<div class="line-break-news"></div>

		<div class="fulltext box">
			<ul class="items">
				<?php foreach($this->items as $item): ?>
				<li class="clr">
				    <a href="<?php echo JRoute::_(JE_ContentHelperRoute::getArticleRoute($item->slug, $item->catid)); ?>" class="title">
					    <?php echo $this->escape($item->title); ?>
				    </a>	
				    <?php if ($item->images): ?>
				    <img src="<?php echo JURI::base().$item->images; ?>" style="float:left; margin-right: 10px; width: 100px;" />
				    <?php endif; ?>
				    <div class="desc">
					<?php echo $item->introtext; ?>
				    </div>		    
				    
				    <div class="clear"></div>
				</li>
				<?php endforeach; ?>
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
