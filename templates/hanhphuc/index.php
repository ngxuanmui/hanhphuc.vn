<?php
/**
 * @package                Joomla.Site
 * @subpackage	Templates.beez_20
 * @copyright        Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.
 * @license                GNU General Public License version 2 or later; see LICENSE.txt
 */

// No direct access.
defined('_JEXEC') or die;

jimport('joomla.filesystem.file');

JHtml::_('behavior.framework', true);

$doc				= JFactory::getDocument();

$doc->addStyleSheet($this->baseurl.'/templates/system/css/system.css');
$doc->addStyleSheet($this->baseurl.'/templates/'.$this->template.'/css/layout.css', $type = 'text/css');
$doc->addStyleSheet($this->baseurl.'/templates/'.$this->template.'/css/styles.css', $type = 'text/css');

//$doc->addScript($this->baseurl.'/templates/'.$this->template.'/javascript/hide.js', 'text/javascript');

?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<?php echo $this->language; ?>" lang="<?php echo $this->language; ?>" dir="<?php echo $this->direction; ?>" >
<head>
<jdoc:include type="head" />

<!--[if IE 7]>
<link href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/css/ie7only.css" rel="stylesheet" type="text/css" />
<![endif]-->

</head>

<body>
	
	<div class="container">
		<div id="header">
			<a href="<?php echo JURI::base(); ?>" id="logo" class="icons fltlft" title="Hạnh Phúc"></a>
			<div id="header-right" class="fltrgt">
				<jdoc:include type="modules" name="top" />
			</div>
		</div>
		<div id="top-menu" class="relative">
			<jdoc:include type="modules" name="top-menu" />
		</div>
		<div id="top-sub-menu" class="relative">
			<jdoc:include type="modules" name="top-sub-menu" />
		</div>
		<div class="main clr">
			<div id="breadcrumbs">
				<jdoc:include type="modules" name="position-2" />
			</div>
			<div class="content">
				<jdoc:include type="message" />
				<jdoc:include type="component" />
			</div>
		</div>
		<div id="footer">
			<p>Thông tin bản quyền</p>
			<p>&copy; 2012 - Hanhphuc.vn</p>
		</div>
	</div>
	
	<jdoc:include type="modules" name="debug" />
</body>
</html>
