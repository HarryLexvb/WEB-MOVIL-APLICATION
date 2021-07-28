$.fn.switchstylesheet = function(options) {

	//default vals
	defaults = {
		seperator : 'alt'
	};
	
	var options = $.extend(defaults, options);
	
	//read the style
	var c = cookie.readCookie(options.seperator);
	if (c) switchss(c);
	
	//goes thru the links to find out the ones having the selector
	$(this).click(function() {
		var title = $(this).attr('title'); //gets the title=?
		switchss(title);
		return false;
	});
	
	function switchss(title) {
		//goes thru all the styles having seperator - alt
		$('link[rel*=style][title*='+options.seperator+']').each(function(i) {
			this.disabled = true;	
			if ($(this).attr('title') == title) {
				this.disabled = false;
			}
		});
		//create a cookie to store the style
		cookie.createCookie(options.seperator, title, 365);
	}
};

//cookie functions
var cookie;
(function($) {
	cookie = {
		createCookie: function(name,value,days) {
			if (days)
			{
				var date = new Date();
				date.setTime(date.getTime()+(days*24*60*60*1000));
				var expires = "; expires="+date.toGMTString();
			}
			else var expires = "";
			document.cookie = name+"="+value+expires+"; path=/";
		},
		
		readCookie: function(name) {
			var nameEQ = name + "=";
			var ca = document.cookie.split(';');
			for(var i=0;i < ca.length;i++)
			{
				var c = ca[i];
				while (c.charAt(0)==' ') c = c.substring(1,c.length);
				if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length,c.length);
			}
			return null;
		}
	};
})(jQuery);