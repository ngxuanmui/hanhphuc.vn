<?php
//var_dump($listComments);
?>

<div class="clr"></div>

<div class="comments">
	
	<div class="list-comments">
		
		<div class="comment-content">
			<?php foreach ($listComments as $comment): ?>
			<div class="avatar fltlft">
				<img src="<?php // echo NtripFrontHelper::getAvatar($comment->created_by); ?>" />
			</div>
			<div class="comment-content-container fltlft">
				<div class="comment-user-info">
					<div class="fltlft"><?php echo $comment->username ? $comment->username : 'Anonymous'; ?> &bull; </div>
					<div class="fltlft"> &bull; <?php echo $comment->created; ?></div>
					<div class="clr"></div>
				</div>
				
				<p><?php echo $comment->content; ?></p>
				
				<div class="clr"></div>
				
				<div class="clr"></div>
				
				<?php 
				$subComments = $comment->subComments ? $comment->subComments : array();
				if (!empty($subComments)):
					foreach ($subComments as $sub):
				?>
				<div class="list-other-comments">
					<div class="comment-user-info fltlft">
						Quản lý <?php echo $sub->item_title; ?>
					</div>
					
					<div class="fltlft">
						<div class="avatar fltlft">
							<img src="<?php echo NtripFrontHelper::getAvatar($sub->created_by); ?>" class="fltlft" />
						</div>
						
						<div class="sub-comment-content fltlft">
								<?php echo $sub->content; ?>
						</div>
						
						<div class="clr"></div>
					</div>
					
					<div class="clr"></div>
					<div class="sub-comment-created">Phản hồi <?php echo $sub->created; ?></div>
					
					<div class="clr"></div>
				</div>
				<?php 
					endforeach;
				endif; 
				?>
					
			</div>
			<div class="clr"></div>
			<?php endforeach; ?>
		</div>
		
		<div class="clr"></div>
	</div>
	
	<?php if (JFactory::getUser()->id): ?>
	<form action="<?php echo JRoute::_('index.php'); ?>" id="hp-frm-comment">
		<div class="post-comment" style="margin: 10px 0;">
			<?php /*if ($isItemOwner): ?>
			Gửi bình luận: 
			<select name="hp_comment_parent_id" id="comment-parent-id">
				<option value="">Bình luận mới</option>
				<?php 
				foreach ($listComments as $comment): 
					$author = $comment->username ? $comment->username : 'Anonymous';
				?>
				<option value="<?php echo $comment->id; ?>"><?php echo JHtml::_('string.truncate', $comment->content, 50) . '('.$author.')'; ?></option>
				<?php endforeach; ?>
			</select>
			<?php endif; */ ?>
			<textarea style="height: 100px; width: 100%; margin: 10px 0 0;" id="hp-textarea-comment"></textarea>
			<div class="clr"></div>
		</div>
		<button class="xicons button fltrgt" id="hp-btn-post-comment" type="button">
			Bình luận
		</button>
		<div class="fltlft error comment-msg" id="comment-msg"></div>
		<?php echo JHtml::_('form.token'); ?>
	</form>
	<?php else: ?>
	<div class="user-comment-not-login">Vui lòng đăng nhập để gửi bình luận của bạn.</div>
	<?php endif; ?>

	<div class="clr"></div>
</div>