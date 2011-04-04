/**********************************************************************************************

  CSS on Sails Framework
  Title: Clean Up Your Mess
  Author: XHTMLized (http://www.xhtmlized.com/)
  Date: July 2010

***********************************************************************************************/

$(document).ready(function() {

	//
	$('a[rel=_blank]').click(function(){
		this.target = "_blank";
	});

	if( $.browser.opera ){

		$('html').addClass('opera');

	}

	//
	if (($.browser.msie)){

	}

	//
	if (($.browser.msie) && ($.browser.version == "8.0")){

		//
		$('html').addClass('ie8');

	}

	//
	if (($.browser.msie) && ($.browser.version == "7.0")){

		//
		$('html').addClass('ie7');

		//
		$('input[type="text"]').focus(function() {
			$(this).addClass('focus');
		});
		$('input[type="text"]').blur(function() {
			$(this).removeClass('focus');
		});

	}

	if (($.browser.msie) && ($.browser.version == "6.0")){

		//
		$('html').addClass('ie6');

		//
		$('input[type="text"]').focus(function() {
			$(this).addClass('focus');
		});
		$('input[type="text"]').blur(function() {
			$(this).removeClass('focus');
		});

		//
		$("#navigation li").hover(
			function () {
				$(this).addClass("hover");
			},
			function () {
				$(this).removeClass("hover");
			}
		);

		//
		$('input[type=text]').addClass("text");
		$('input[type=password]').addClass("text");
		$('input[type=button]').addClass("button");
		$('input[type=reset]').addClass("reset");
		$('input[type=submit]').addClass("submit");
		$('input[type=radio]').addClass("radio");
		$('input[type=checkbox]').addClass("checkbox");
		$('input[type=file]').addClass("file");
		$('input[type=image]').addClass("image");

	}
  
  $(".zoomable").fancybox({
    'transitionIn'	: 'elastic',
		'transitionOut'	: 'elastic'
  })
  
  $("a.toc").click(function(){
    $("#table-of-contents").toggle(200);
    return false;
  })
});
