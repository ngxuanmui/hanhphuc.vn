<?php
/**
 * @package		Joomla.Site
 * @subpackage	mod_banners
 * @copyright	Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 */

// no direct access
defined('_JEXEC') or die;

?>
<div class="module-business-blog <?php echo $moduleclass_sfx?> padding-5">
    <h2><?php echo $moduleTitle ?></h2>
	
	<div class="line-break-bussiness-blog"><span></span></div>
	
    <div class="bussiness-blog-box box">
        <?php if(!empty($blogs)): ?>
        <ul>
        <?php foreach($blogs as $blog): ?>
        	<li>
		        <a href="#" class="image float-left margin-right-20" style="background: #FFF url('<?php echo JURI::base() . 'images/business/' . $blog->business_logo ?>') center no-repeat;" title="<?php echo $blog->business_name; ?>">
		        	
		        </a>
		        <?php endforeach; ?>
				
				<div class="clear"></div>
			</li>
		</ul>
		<?php endif; ?>
    </div>
	
	
</div>