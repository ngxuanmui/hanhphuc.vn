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
<div class="module-business-blog <?php echo $moduleclass_sfx?>">
    <h2><?php echo $moduleTitle ?></h2>
    <div>
        <?php if(!empty($blogs)): ?>
        <?php foreach($blogs as $blog): ?>
        <a href="#" class="image float-left margin-right-20 round-4-conners-5" style="background: #FFF url('<?php echo $blog->business_logo ?>') center no-repeat;"></a>
        <?php endforeach; ?>
        <?php else: ?>
        <div class="image float-left margin-right-20 round-4-conners-5" style="background: #FFF url('images/sampledata/sample-3.png') center no-repeat;"></div>
        <div class="image float-left margin-right-20 round-4-conners-5" style="background: #FFF url('images/sampledata/sample-3.png') center no-repeat;"></div>
        <div class="image float-left margin-right-20 round-4-conners-5" style="background: #FFF url('images/sampledata/sample-3.png') center no-repeat;"></div>
        <div class="image float-left margin-right-20 round-4-conners-5" style="background: #FFF url('images/sampledata/sample-3.png') center no-repeat;"></div>
        <div class="image float-left round-4-conners-5" style="background: #FFF url('images/sampledata/sample-3.png') center no-repeat;"></div>

        <div class="image float-left margin-right-20 round-4-conners-5" style="background: #FFF url('images/sampledata/sample-3.png') center no-repeat;"></div>
        <div class="image float-left margin-right-20 round-4-conners-5" style="background: #FFF url('images/sampledata/sample-3.png') center no-repeat;"></div>
        <div class="image float-left margin-right-20 round-4-conners-5" style="background: #FFF url('images/sampledata/sample-3.png') center no-repeat;"></div>
        <div class="image float-left margin-right-20 round-4-conners-5" style="background: #FFF url('images/sampledata/sample-3.png') center no-repeat;"></div>
        <div class="image float-left margin-right-20 round-4-conners-5" style="background: #FFF url('images/sampledata/sample-3.png') center no-repeat;"></div>
        <div class="image float-left round-4-conners-5" style="background: #FFF url('images/sampledata/sample-3.png') center no-repeat;"></div>
        <?php endif; ?>
    </div>
</div>