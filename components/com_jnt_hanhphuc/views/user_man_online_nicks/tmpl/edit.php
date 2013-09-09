<?php
/**
 * @package		Joomla.Administrator
 * @subpackage	com_jnt_hanhphuc
 * @copyright	Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 */

// no direct access
defined('_JEXEC') or die;

JHtml::addIncludePath(JPATH_COMPONENT.'/helpers/html');
JHtml::_('behavior.tooltip');
JHtml::_('behavior.formvalidation');

$jqueryFileUploadPath = JURI::root() . 'media/hp/jquery-ui-upload/';
?>

<div class="container">
    <div class="float-left left-side">
		<div class="sub-container list-items relative">
			<form action="<?php echo JRoute::_('index.php?option=com_jnt_hanhphuc&task=user_man_hotel.apply&id='.(int) $this->item->id); ?>" method="post" name="userForm" id="album-form" class="form-validate" enctype="multipart/form-data">
				
					<fieldset class="userform">
						<legend><?php echo empty($this->item->id) ? JText::_('Thêm mới Album') : JText::sprintf('Thông tin chi tiết', $this->item->id); ?></legend>
						<ul class="adminformlist">
							<li><?php echo $this->form->getLabel('name'); ?>
							<?php echo $this->form->getInput('name'); ?></li>

							<li><?php echo $this->form->getLabel('alias'); ?>
							<?php echo $this->form->getInput('alias'); ?></li>
							
							<li><?php echo $this->form->getLabel('catid'); ?>
							<?php echo $this->form->getInput('catid'); ?></li>
							
							<?php /*

							<li><?php echo $this->form->getLabel('state'); ?>
							<?php echo $this->form->getInput('state'); ?></li>
							 */?>

							<?php /*
							<li>
								<?php echo $this->form->getLabel(''); ?>
								<?php echo $this->form->getInput(''); ?>
							</li>

							<li>
								<?php echo $this->form->getLabel(''); ?>
								<?php echo $this->form->getInput(''); ?>
							</li>
							 */ ?>

							<li>
								<?php echo $this->form->getLabel('images'); ?>
								<?php echo $this->form->getInput('images'); ?>
							</li>

							<?php 
							$introImages = ($this->item->images) ? $this->item->images : false; 
							?>

							<?php if ($introImages): ?>
							<li class="control-group form-inline">
								<?php echo $this->form->getLabel('del_image'); ?>
								<?php echo $this->form->getInput('del_image'); ?>
							</li>

							<li>
								<label>Intro image uploaded</label>
								<a href="<?php echo JUri::root() . $introImages; ?>" class="modal">
									<img src="<?php echo JUri::root() . $introImages; ?>" style="width: 100px;" />
								</a>
							</li>
							<?php endif; ?>

							<li><?php echo $this->form->getLabel('id'); ?>
							<?php echo $this->form->getInput('id'); ?></li>
						</ul>
						<div class="clr"> </div>
						
						<input type="hidden" name="task" value="user_man_online_nicks.apply" />
						<?php echo JHtml::_('form.token'); ?>
						
						<?php echo HP_User_Toolbar::buttonEdit('user_man_album'); ?>

					</fieldset>
				
			</form>
		</div>
	</div>
	<div class="float-right right-side">
		<?php echo JEUtil::loadModule('right', 'module-padding'); ?>
	</div>
</div>

<div class="clr"></div>