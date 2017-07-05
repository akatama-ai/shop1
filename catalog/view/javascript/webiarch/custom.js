 /*copyright(c)  2017 webiarch.com*/
function HoverWatcher(selector){

	this.hovering = false;

	var self = this;



	this.isHoveringOver = function() {

		return self.hovering;

	}



	$(selector).hover(function() {

		self.hovering = true;

	}, function() {

		self.hovering = false;

	})

}

function blogCrop(){

if ($(window).width() > 979) {

	$('.blog_page .blog-image').each(function() {									  

	var that = $(this);

	var url = that.find('img').attr('src');

	that.css({'background-image':'url("' + url + '")'});

});

}

}

jQuery(document).ready(function() { blogCrop();});

jQuery(window).resize(function() {blogCrop();});





$(document).ready(function(){

            $("#top-links a.dropdown-toggle").click(function(){

			$(".account-link-toggle" ).slideToggle( "2000" );

			$(".header-cart-toggle").slideUp("slow");

			$(".language-toggle").slideUp("slow");

			$(".currency-toggle").slideUp("slow");

	  	});

            $("#cart button.dropdown-toggle").click(function(){

			$(".header-cart-toggle" ).slideToggle( "2000" );														 

		   	$(".account-link-toggle").slideUp("slow");

			$(".language-toggle").slideUp("slow");

			$(".currency-toggle").slideUp("slow");

   	    });

	    $("#form-currency button.dropdown-toggle").click(function(){

			$(".currency-toggle" ).slideToggle( "2000" );	

			$(".language-toggle").slideUp("slow");

			$(".account-link-toggle").slideUp("slow");

			$(".header-cart-toggle").slideUp("slow");

			

            });

            $("#form-language button.dropdown-toggle").click(function(){

			$( ".language-toggle" ).slideToggle( "2000" );																  

			$(".currency-toggle").slideUp("slow");

			$(".account-link-toggle").slideUp("slow");

			$(".header-cart-toggle").slideUp("slow");

            });

		

});



/*For Parallex*/



jQuery(window).load(function(){

			

					 

	var isMobile = /Android|webOS|iPhone|iPad|iPod|BlackBerry/i.test(navigator.userAgent);

	if(!isMobile) {

		if($(".parallex").length){  $(".parallex").sitManParallex({  invert: false });};    

	}else{

		$(".parallex").sitManParallex({  invert: true });

		

		}	

});



/* Filter - Responsive*/

function optionFilter(){

	if ($(window).width() <= 991) {

		$('#column-left .refine-filter-box').appendTo('.row #content .category-refine');

		$('#column-right .refine-filter-box').appendTo('.row #content .category-refine');

	} else {

		$('.row #content .category-refine .refine-filter-box').appendTo('#column-left .refine-filter-box');

		$('.row #content .category-refine .refine-filter-box').appendTo('#column-right .refine-filter-box');

	}

}

$(document).ready(function(){ optionFilter(); });

$(window).resize(function(){ optionFilter(); });


//go to top

$(document).ready(function () {

    $(window).scroll(function () {

        if ($(this).scrollTop() > 100) {

            $('#scroll').fadeIn();

        } else {

            $('#scroll').fadeOut();

        }

    });

    $('#scroll').click(function () {

        $("html, body").animate({scrollTop: 0}, 600);

        return false;

    });

});





