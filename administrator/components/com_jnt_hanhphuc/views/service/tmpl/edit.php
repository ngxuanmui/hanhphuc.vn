<?php
/**
 * @version		$Id: edit.php 20649 2011-02-10 09:15:04Z chdemko $
 * @package		Joomla.Administrator
 * @subpackage	com_banners
 * @copyright	Copyright (C) 2005 - 2011 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 */

// No direct access.
defined('_JEXEC') or die;

JHtml::addIncludePath(JPATH_COMPONENT.'/helpers/html');
JHtml::_('behavior.tooltip');
JHtml::_('behavior.formvalidation');
?>
<script type="text/javascript">
	Joomla.submitbutton = function(task)
	{
		if (task == 'banner.cancel' || document.formvalidator.isValid(document.id('banner-form'))) {
			Joomla.submitform(task, document.getElementById('banner-form'));
		}
	}
	window.addEvent('domready', function() {
		document.id('jform_type0').addEvent('click', function(e){
			document.id('image').setStyle('display', 'block');
			document.id('url').setStyle('display', 'block');
			document.id('custom').setStyle('display', 'none');
		});
		document.id('jform_type1').addEvent('click', function(e){
			document.id('image').setStyle('display', 'none');
			document.id('url').setStyle('display', 'block');
			document.id('custom').setStyle('display', 'block');
		});
		if(document.id('jform_type0').checked==true) {
			document.id('jform_type0').fireEvent('click');
		} else {
			document.id('jform_type1').fireEvent('click');
		}
	});
</script>

<form action="<?php echo JRoute::_('index.php?option=com_jnt_hanhphuc&view=service&layout=edit&id='.(int) $this->item->id); ?>" method="post" name="adminForm" id="banner-form" class="form-validate">
	<div class="width-60 fltlft">
		<fieldset class="adminform">
			<legend><?php echo empty($this->item->id) ? JText::_('Service detail') : JText::sprintf('Service detail %d', $this->item->id); ?></legend>
			<ul class="adminformlist">
				<li><?php echo $this->form->getLabel('id'); ?>
				<?php echo $this->form->getInput('id'); ?></li>

				<li><?php echo $this->form->getLabel('business_id'); ?>
				<?php echo $this->form->getInput('business_id'); ?></li>

				<li><?php echo $this->form->getLabel('category'); ?>
				<?php echo $this->form->getInput('category'); ?></li>

				<li><?php echo $this->form->getLabel('name'); ?>
				<?php echo $this->form->getInput('name'); ?></li>

				<li><?php echo $this->form->getLabel('price'); ?>
				<?php echo $this->form->getInput('price'); ?></li>

                <li><?php echo $this->form->getLabel('current_price'); ?>
                <?php echo $this->form->getInput('current_price'); ?></li>

                <li><?php echo $this->form->getLabel('promotion'); ?>
                    <?php echo $this->form->getInput('promotion'); ?></li>
				
				<li><?php echo $this->form->getLabel('payment_type'); ?>
				<?php echo $this->form->getInput('payment_type'); ?></li>
				
				<li><?php echo $this->form->getLabel('description'); ?>
				<?php echo $this->form->getInput('description'); ?></li>
			</ul>
			<div class="clr"> </div>

		</fieldset>
	</div>

<div class="width-40 fltrt">
	<?php echo JHtml::_('sliders.start','order-sliders-'.$this->item->id, array('useCookie'=>1)); ?>

	<?php echo JHtml::_('sliders.panel',JText::_('Order state'), 'publishing-details'); ?>
		<fieldset class="panelform">
		<ul class="adminformlist">
            
            <li><?php echo $this->form->getLabel('state'); ?>
			<?php echo $this->form->getInput('state'); ?></li>
            
            <li><?php echo $this->form->getLabel('created'); ?>
			<?php echo $this->form->getInput('created'); ?></li>

            <li><?php echo $this->form->getLabel('created_by'); ?>
            <?php echo $this->form->getInput('created_by'); ?></li>

            <li><?php echo $this->form->getLabel('modified'); ?>
            <?php echo $this->form->getInput('modified'); ?></li>

            <li><?php echo $this->form->getLabel('modified_by'); ?>
            <?php echo $this->form->getInput('modified_by'); ?></li>
        </ul>
		</fieldset>

	<?php echo JHtml::_('sliders.end'); ?>
	<input type="hidden" name="task" value="" />
	<?php echo JHtml::_('form.token'); ?>
</div>

<div class="clr"></div>
</form>
