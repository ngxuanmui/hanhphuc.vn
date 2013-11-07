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
	
</style>

<script src="<?php echo JURI::base(); ?>media/hp/caroufredsel/jquery.carouFredSel-6.2.1-packed.js" type="text/javascript"></script>
<script type="text/javascript">
	jQuery(function($) {
		$('#carousel').carouFredSel({
			width: '100px',
			items: {
				visible: '+1'
			},
			auto: {
				items: 1
			},
			prev: '#prev',
			next: '#next'
		});

	});
</script>

<div class="module-title module-padding">Album Ảnh cưới</div>
<div class="line-break"></div>
<div id="albums-wrapper">
	<div id="carousel">
		<?php foreach ($list as $item): ?>
		<img src="<?php echo $item->images; ?>" alt="<?php echo $item->name; ?>" width="269" />
		<?php endforeach; ?>
	</div>
</div>