jQuery.noConflict();

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
	
	$('#wrapper').infinitescroll({
        navSelector : '.infinitescroll',
        nextSelector : '.infinitescroll a',
        itemSelector : '#wrapper .tack',
        loading: {
            img   : "http://wedding.jimmydang.vn/wedding/wp-content/themes/covertpinpress/images/ajax-loader.gif",
            selector: '#footer',
            msgText: 'Loading new posts...',
            finishedMsg: 'No More Posts.'
			}
		}, function(arrayOfNewElems) {
			var $newElems = $( arrayOfNewElems ).css({ opacity: 0 });
			// ensure that images load before adding to masonry layout
			$newElems.imagesLoaded(function(){
				// show elems now they're ready
				$newElems.css({ opacity: 1 });
				$('#wrapper').masonry( 'appended', $newElems, true ); 
			});
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
		var wrapper_width = $('body').width();
		wrapper_width = Math.floor(wrapper_width / 237) * 237;
		//		if (wrapper_width < 933) wrapper_width = 933;
		$('#wrapper').css('width', wrapper_width);
	}

	wrapperWidth();

	w.resize(function() {
		wrapperWidth();
	});

	var $container = $('#wrapper');
	$container.imagesLoaded(function() {
		$container.masonry({
			itemSelector : '.tack',
			columnWidth : 222,
			gutterWidth : 15
		});

		imwb_move_sidebar();
	});

	if ($("#wpadminbar").length > 0) {
		$("#header-bar, #header_banner").addClass("wpadminbar")
	}
});