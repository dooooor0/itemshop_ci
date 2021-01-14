/************************** jQuery extension **************************/
$.fn.extend({
    //### Prototype "up" method
    up: function(selector)
    {
        var found = "";
        selector = $.trim(selector || "");

        $(this).parents().each(function()
        {
            if (selector.length == 0 || $(this).is(selector))
            {
                found = this;
                return false;
            }
        });

        return $(found);
    },
    down: function() {
        var el = this[0] && this[0].firstChild;
        while (el && el.nodeType != 1)
            el = el.nextSibling;
        return $(el);
    }
});

/***************************** PopupWindow *****************************/
var PopupWindow = function() {
    var my = this;

    this.modalWindow = $('#modalWindow');
    this.blocker = $('#blocker');

    this.popup = function( href ) {
        my.modalWindow.load( href, my.update );
    };

    this.update = function( result ) {
        var html = $( result );
        html.find('[data-confirm]').click( function( ev ) {
            if ( ! confirm( $(this).attr('data-confirm') ) ) {
                ev.preventDefault();
            }
        });

        my.modalWindow.html( html );
        my.blocker.show();
        my.modalWindow.addClass('show');
        my.modalWindow.css('top', $(window).scrollTop() + 100 +'px');
        $(".backgroundBlack").css("height", document.body.clientHeight);
        
        my.modalWindow.find('a.modalClose').click( my.close );
    };
    
    this.close = function( ev ) {
        ev.preventDefault();
        my.modalWindow.removeClass( 'show' );
        my.modalWindow.empty();
        my.blocker.hide();
    };
};

/***************************** PopupController *****************************/
var PopupController = function( button ) {
    var my = this;

    this.popupWindow = new PopupWindow;

    this.button = button;
    this.button.unbind('click');
    this.modal = $('#modalWindow');
    this.blocker = $('#blocker');

    this.getWindow = function() {
        return my.popupWindow;
    };

    this.click = function( ev ) {
        ev.preventDefault();
        var el = $(ev.target);

        if ( el[0].tagName != 'A' ) {
            el = el.up('a');
        }

        var ajaxOptions = {
            url: el.attr('href'),
            success: my.popupWindow.update
        };
        if ( el.attr('data-form') ) {
            ajaxOptions.data = $( el.attr('data-form') ).serialize();
        }
        jQuery.ajax( ajaxOptions );
    };
    
    this.submit = function( ev ) {
        ev.preventDefault();
        var form = $(ev.target);

        if ( form.attr('data-popup-class') ) {
            $('#modalWindow').addClass( form.attr('data-popup-class') );
        }

        jQuery.ajax({
            url: form.attr('action'),
            data: form.serialize(),
            success: my.popupWindow.update
        });
    };

    // assign
    my.button.click( my.click );
    $('form.popup').submit( my.submit );
};

/********************************** initialize **********************************/

$(document).ready(function() {
    var popupController = new PopupController( $('a.popup') );

    $('#gnb_menu').click(function(e){
        e.preventDefault(); 
        
        $('#gnb_sub_menu').slideToggle();
        
        return false;
    });
    
    $('#footer_nation_popup').click(function(e){
        e.preventDefault();
        
        $('#footer_nation_area').slideToggle();
        
        return false; 
    });

	$('.btn_card').click(function(e){
	    e.preventDefault();
		$('.card_select').toggle();
		
		return false;
	});
	
	//서브메뉴 열림
	$('.snb > li').click(function(){
		$('.snb > li').each(function() {
			$(this).find('img').attr('src', $(this).find('img').attr('src').replace('_on.png','.png'));
		});
		
		if($(this).children('ul').is(':hidden')){
			$(this).children('ul').show();
			$(this).addClass('active').siblings().removeClass('active').children('ul').hide();
			$(this).find('img').attr('src', $(this).find('img').attr('src').replace('.png','_on.png'));
		} else{
			$(this).children('ul').hide();
			$(this).removeClass('active');
			$(this).find('img').attr('src', $(this).find('img').attr('src').replace('_on.png','.png'));
		}
		
		return false;
	});

	$('#mobile aside').css({minHeight:$(window).height()});
	$('#mobile aside .snb').on('click','a',function(){
		var snb_h = $(this).parents('ul').height()+$('.profileArea').height()+$('aside .btnArea').height() + 50;
		$('#wrap').removeAttr('style');
		
		if($('#wrap').height() < snb_h){
			$('#wrap').css({height:snb_h});
		} else{
			$('#wrap').removeAttr('style');
		}
		
		return false;
	});

	// 뒤로가기 버튼
	$('.btn_back').click(function(e){
	    e.preventDefault();
		history.back();
		return false;
	});
	
	$(".tab_content").hide();
    $(".tab_content:first").show();

    /**
    $(".tabLi.StA li").click(function () {
        $(".tabLi.StA li").removeClass("active");
        $(this).addClass("active");
        $(".tab_content").hide();
        var activeTab = $(this).attr("rel");
        $("#" + activeTab).fadeIn();
        
        return false;
    });
    **/

	$(".tabB_content").hide();
    $(".tabB_content:first").show();
    /**
    $(".tabLi.StB li").click(function () {
        $(".tabLi.StB li").removeClass("active");
        $(this).addClass("active");
        $(".tabB_content").hide();
        var activeTab = $(this).attr("rel");
        $("#" + activeTab).fadeIn();
        
        return false;
    });
    **/
    
	var autoHeightA=$(".tabLi.StA .autoH").css('height');
	$('.tabLi.StA .autoH').children('li').siblings().css('height',autoHeightA);
	var autoHeightB=$(".tabLi.StB .autoH").css('height');
	$('.tabLi.StB .autoH').children('li').siblings().css('height',autoHeightB);

	$(window).scroll(function(){
		var scroll = $(window).scrollTop();
		if (scroll <= 100 ){
			$('.go_top').fadeOut();//css('display','none');
		}else{
			$('.go_top').fadeIn();//.css('display','block');
		};		
	});
	
	//$('.capsule_info > div.area').click(function(){
	//	$(this).toggleClass('active').siblings().removeClass('active');
	//});
	
    $('form.changeSubmit').change( function( ev ) {
        $(ev.target).up('form').submit();
        
        return false;
    });
    
    $('[data-confirm]').click( function( ev ) {
        if ( ! confirm( $(this).attr('data-confirm') ) ) {
            ev.preventDefault();
        }
    });
    
    $('[data-prevent]').click( function( ev ) {
        ev.preventDefault();
    });
    
    $('form.changeSubmit').change( function( ev ) {
        $(ev.target).up('form').submit();
    });
    
    $('.pcPurchase').click(function(e){
        e.preventDefault();
        
        $('#pcPurchaseReturnUrl').val(this.rel);
        $('#pcPurchaseMainForm').submit();
    });

    $('.pcPurchaseConfirm').click(function(e){
        e.preventDefault();
        
        if(confirm('PCが不足しています。\n購入しますか？')) {
            $('#pcPurchaseReturnUrl').val(this.rel);            
            $('#pcPurchaseMainForm').submit();
        }
    });
});

$(window).resize(function(){	
	var autoHeightA=$(".tabLi.StA .autoH").css('height');
	$('.tabLi.StA .autoH').children('li').siblings().css('height',autoHeightA);	
	var autoHeightB=$(".tabLi.StB .autoH").css('height');
	$('.tabLi.StB .autoH').children('li').siblings().css('height',autoHeightB);
});

function setCookie(name, value, expiredays){
    var todayDate = new Date();
    todayDate.setDate(todayDate.getDate() + expiredays);
    document.cookie = name + "=" + escape(value) + "; path=/; expires=" + todayDate.toGMTString() + ";";
}

function getCookie( name ){
    var nameOfCookie = name + "=";
    var x = 0;
    while ( x <= document.cookie.length ){
        var y = (x+nameOfCookie.length);
        if ( document.cookie.substring( x, y ) == nameOfCookie ){
            if ( (endOfCookie=document.cookie.indexOf( ";", y )) == -1 ) endOfCookie = document.cookie.length;
            return unescape( document.cookie.substring( y, endOfCookie ) );
        }   
        x = document.cookie.indexOf( " ", x ) + 1;
        if ( x == 0 ) 
        break;
    }   
    return ""; 
}