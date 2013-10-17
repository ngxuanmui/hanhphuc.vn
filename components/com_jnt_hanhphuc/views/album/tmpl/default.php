<?php
// no direct access
defined('_JEXEC') or die;

$item = $this->item;

$doc = JFactory::getDocument();
$doc->addStyleSheet(JURI::base() . 'media/hp/lightbox/css/lightbox.css');
?>

<script type="text/javascript">
	var fileLoadingImage = '<?php echo JURI::base(); ?>media/hp/lightbox/images/loading.gif';
	var fileCloseImage = '<?php echo JURI::base(); ?>media/hp/lightbox/images/close.png';
</script>

<script src="<?php echo JURI::base(); ?>media/loca/lightbox/js/lightbox.js"></script>



<div class="container">
	<div class="float-left left-side">
		<h1 class="content-title">
			Album ảnh: <?php echo $item->name; ?>
		</h1>

		<div class="line-break-news"></div>

		<div class="fulltext box">

			<?php if (!empty($this->otherImages)): ?>
			<div class="other-images">
				<ul>
					<?php foreach ($this->otherImages as $img): ?>
					<li class="img">
						<a href="<?php echo JURI::base(); ?>images/albums/<?php echo $item->id; ?>/<?php echo $img->images; ?>" rel="lightbox[album]">
							<img src="<?php echo JURI::base(); ?>images/albums/<?php echo $item->id; ?>/thumbnail/<?php echo $img->images; ?>" />
						</a>						
					</li>
					<?php endforeach; ?>
				</ul>
			</div>
			<?php endif; ?>
			
			<div class="clear"></div>

		</div>

		</div>

		<div class="float-right right-side">
		<?php echo JEUtil::loadModule('right', 'module-padding'); ?>
    </div>
    
    <div class="clear"></div>
</div>

<div class="clear"></div>