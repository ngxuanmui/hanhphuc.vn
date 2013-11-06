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
			width: '100%',
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

<div id="wrapper">
abc
	<div id="carousel">
		<img src="img/dakar-1.jpg" alt="dakar-1" width="250" height="150" /> <img
			src="img/dakar-2.jpg" alt="dakar-2" width="250" height="150" /> <img
			src="img/dakar-3.jpg" alt="dakar-3" width="100" height="150" /> <img
			src="img/dakar-4.jpg" alt="dakar-4" width="250" height="150" /> <img
			src="img/dakar-5.jpg" alt="dakar-5" width="250" height="150" /> <img
			src="img/dakar-6.jpg" alt="dakar-6" width="100" height="150" /> <img
			src="img/dakar-7.jpg" alt="dakar-7" width="250" height="150" /> <img
			src="img/dakar-8.jpg" alt="dakar-8" width="250" height="150" /> <img
			src="img/dakar-9.jpg" alt="dakar-9" width="250" height="150" /> <img
			src="img/dakar-10.jpg" alt="dakar-10" width="250" height="150" /> <img
			src="img/dakar-11.jpg" alt="dakar-11" width="250" height="150" /> <img
			src="img/dakar-12.jpg" alt="dakar-12" width="100" height="150" /> <img
			src="img/dakar-13.jpg" alt="dakar-13" width="250" height="150" /> <img
			src="img/dakar-14.jpg" alt="dakar-14" width="250" height="150" /> <img
			src="img/dakar-15.jpg" alt="dakar-15" width="100" height="150" />
	</div>
</div>