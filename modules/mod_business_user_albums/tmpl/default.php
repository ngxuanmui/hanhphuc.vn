<?php
/**
 * @package		Joomla.Site
 * @subpackage	mod_business_user_menu
 * @copyright	Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 */

// no direct access
defined('_JEXEC') or die;
?>

<style type="text/css">
	.bx-pager-item { float: left; }
	.album-bxslider li { width: 269px; overflow: hidden; }
</style>

<script src="<?php echo JURI::base(); ?>media/hp/caroufredsel/jquery.carouFredSel-6.2.1-packed.js" type="text/javascript"></script>
<script type="text/javascript">
	jQuery(function($) {
		$('.album-bxslider').bxSlider({auto: true, controls: false, pager: false});
	});
</script>

<div class="module-title module-padding">Album Ảnh cưới</div>
<div class="line-break"></div>
<div id="albums-wrapper">
	<ul class="album-bxslider">
		<?php 
		foreach ($list as $item): 
			$img = getimagesize(JPATH_ROOT . DS . $item->images);
		
			$w = 269;
			
			$h = round(( $img[1] * $w ) / $img[0]);			
		?>
		<li><img src="<?php echo $item->images; ?>" alt="<?php echo $item->name; ?>" style="border: none; height: <?php echo $h . 'px'; ?>; width: <?php echo $w . 'px'; ?>" /></li>
		<?php endforeach; ?>
	</ul>
</div>

<div class="clr"></div>