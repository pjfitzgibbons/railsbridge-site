var RBAuthority = function(){
	var BASE_URL = "http://localhost.com:3000"
	var _P = {
		init : function( params ) {
			// load JQuery using Google AJAX libraries
			document.write("<script src='http://www.google.com/jsapi'></script>")
			document.write("<script>google.load('jquery', '1.3.2');</script>");
//			document.write("<script>google.load('jqueryui', '1.7.2');</script>");
			
		},
		loadCore : function() {
			
			// load core functions after JQuery was loaded.
			document.write("<script src='" + BASE_URL + "/javascripts/railsbridge-post-authority-core.js'></script>");
		}
	};
	return {
		init : function( params ) {
			_P.init( params );
			_P.loadCore();
		}
	};
}();


RBAuthority.init();