jQuery.noConflict();

function imwb_move_sidebar() {}

jQuery(function($){
	$('.user-toolbar button').click(function(){
		
		var task = $(this).attr('rel');
		var form = $('form[name="userForm"]');
		
		// set task
		$('input[type="hidden"][name="task"]').val(task);
		
		var tmp = task.split('.');
		
		if (tmp[1] == 'cancel' || tmp[1] == 'add')
		{
			// remove validate
			$(form).validate({ignore: ".ignore"}).cancelSubmit = true;
			$(form).submit();
			
			return false;
		}
		
		validate = form.validate({ errorPlacement: function(error, element) {} });
		
		// submit form
		if (validate)
			form.submit();
		else
			return false;
	});
	
	var w = $(window);
	var d = false;

	w.scroll(function() {
		var e = w.scrollTop() >= 44;
		var a = $("#header-bar, #header_banner");

		if (!d && e) {
			a.addClass("fixed");
			d = true
		} else if (d && !e) {
			a.removeClass("fixed");
			d = false
		}
	});

	function wrapperWidth() {
		//	var wrapper_width = $('body').width()-150;
		var wrapper_width = $('div.left-side').width();
		// wrapper_width = Math.floor(wrapper_width / 237) * 237;
		//		if (wrapper_width < 933) wrapper_width = 933;
		$('#wrapper').css('width', wrapper_width);
	}

	wrapperWidth();

	w.resize(function() {
		wrapperWidth();
	});

	var $container = $('#wrapper');
	
	if (typeof USE_MASONRY !== 'undefined' && USE_MASONRY)
	{
		$container.imagesLoaded(function() {
			$container.masonry({
				itemSelector : '.tack',
				columnWidth : 200,
				gutterWidth : 15
			});

			imwb_move_sidebar();
		});
	}
	
	// comments
$('#hp-btn-post-comment').click(function(){
		
		var t = $(this);
		var comment = $('#hp-textarea-comment');
		var msg = $('#comment-msg');
		
		if (t.hasClass('processing'))
			return false;
		
		t.addClass('processing');
		
		if ($.trim(comment.val()) == '')
		{
			t.removeClass('processing');
			msg.removeClass('success').addClass('error').html('Vui lòng nhập vào thông tin bình luận của bạn');
			return false;
		}
		else
		{
			msg.removeClass('error').html('Vui lòng đợi ...');
		}
		
		$.post(
				'index.php?option=com_hp_comment&task=comment.post',
				/* ITEM_ID, ITEM_TYPE was defined in form */
				{content: comment.val(), item_id: ITEM_ID_COMMENT, item_type: ITEM_TYPE_COMMENT, parent_id: $('#comment-parent-id').val()},
				function(res)
				{
					t.removeClass('processing');
					
					if (res == 'OK')
					{
						comment.val('');
						msg.removeClass('error').addClass('success').html('Cảm ơn bạn. Bình luận của bạn đã được gửi!');
					}
					else
						msg.removeClass('success').addClass('error').html('Xin lỗi bạn. Có lỗi xảy ra. Vui lòng thử lại sau!');
						
				}
		);
		
		return false;
	});
});