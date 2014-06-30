<?php
/**
 * @package		Joomla.Site
 * @subpackage	com_users
 * @copyright	Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 * @since		1.6
 */

defined('_JEXEC') or die;

JHtml::_('behavior.keepalive');
JHtml::_('behavior.tooltip');
JHtml::_('behavior.formvalidation');


?>

<script type="text/javascript">
<!--
	window.addEvent('domready', function(){
		   document.formvalidator.setHandler('name', function(value) {
		      regex=/^\d{4}-\d{2}-\d{2}$/;
		      return regex.test(value);
		   });
		});
//-->
</script>

<div class="container">
    <div class="float-left left-side">
    
		<h2 class="new-h2">Đăng ký thành viên</h2>
		<form id="member-registration" action="<?php echo JRoute::_('index.php?option=com_users&task=registration.register'); ?>" method="post" class="form-validate">
		<div class="new-container">
			<div class="registration">	
				
			<?php foreach ($this->form->getFieldsets() as $fieldset): // Iterate through the form fieldsets and display each one.?>
				<?php $fields = $this->form->getFieldset($fieldset->name);?>
				<?php if (count($fields)):?>
					<ul>				
						
					<?php foreach($fields as $field):// Iterate through the fields in the set and display them.?>
						<?php if ($field->hidden):// If the field is hidden, just display the input.?>
							<?php echo $field->input;?>
						<?php else:?>
						<li>
							<label>
								<?php echo $field->label; ?>
								<?php if (!$field->required && $field->type!='Spacer'): ?>
									
								<?php endif; ?>
							</label>
							<div><?php echo ($field->type!='Spacer') ? $field->input : "&#160;"; ?></div>
							<div class="clr"></div>
						</li>
						<?php endif;?>
					<?php endforeach;?>
						
					</ul>
				<?php endif;?>
			<?php endforeach;?>
					
			</div>
		</div>
		
		<ul>
						<li>
							<label>&nbsp;</label>
							<div>
								<button type="submit" class="validate btn-update"><?php echo JText::_('JREGISTER');?></button>
								<?php echo JText::_('COM_USERS_OR');?>
								<a href="<?php echo JRoute::_('');?>" title="<?php echo JText::_('JCANCEL');?>"><?php echo JText::_('JCANCEL');?></a>
								<input type="hidden" name="option" value="com_users" />
								<input type="hidden" name="task" value="registration.register" />
								<?php echo JHtml::_('form.token');?>
							</div>
						</li>
					</ul>
		
		</form>
	</div>
	<div class="float-right right-side">
		<?php echo JEUtil::loadModule('right', 'module-padding'); ?>
    </div>
    <div class="clr"></div>
</div>
<script type="text/javascript">
    function changeUserType(type) {
        if(type == 1) {
            //console.log(jQuery("#jform_user_profile_name_of_yours").parent().parent().parent());
            jQuery("#jform_user_profile_name_of_yours").parent().parent().parent().hide();
            jQuery("#jform_business_profile_business_director").parent().parent().parent().show();
        } else {
            //console.log(jQuery("#jform_business_profile_business_director").parent().parent().parent());
            jQuery("#jform_business_profile_business_director").parent().parent().parent().hide();
            jQuery("#jform_user_profile_name_of_yours").parent().parent().parent().show();
        }
    }
    jQuery.noConflict();
    jQuery(document).ready(function($){
        $("#jform_user_type").change(function(){
            changeUserType($(this).val());
        });
        $("#jform_user_type").change();
    });
</script>
