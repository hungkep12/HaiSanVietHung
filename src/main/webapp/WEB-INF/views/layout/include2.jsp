<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!-- Living search -->
<script>

	$(document).ready(function(){
		$("#woocommerce-product-search-field-0").keyup(function(){
			var nameProductSearch=$("#woocommerce-product-search-field-0").val();
			$.ajax({
				  url: "${pageContext.request.contextPath}/ajax/living-search",
				  type: "get", //send it through get method
				  data: { 
					  nameProduct:nameProductSearch
				  },
				  success: function(response) {
					  $("#resultLivingSearch").html(response);
				  },
				  error: function(xhr) {
				  }
				});
		});
	});
	
	
</script>

<!-- add to cart -->
<script>

	$(document).ready(function(){
		$(".add-to-cart-grid").click(function(){
			
			var id = $(this).attr("data-id");
			$.ajax({
				  url: "${pageContext.request.contextPath}/ajax/cart",
				  type: "get", //send it through get method
				  data: { 
					  id:id
				  },
				  success: function(response) {
					  $(".cart-item").html(response);
					  
				  },
				  error: function(xhr) {
				  }
				});
		});
	});

</script>

<!-- remove from cart -->
<script>
	$(document).ready(function(){
		$(".remove").click(function(){
			
			var id = $(this).attr("data-id");
			$.ajax({
				  url: "${pageContext.request.contextPath}/ajax/remove-cart",
				  type: "get", //send it through get method
				  data: { 
					  id:id
				  },
				  success: function(response) {
					  document.location.reload(true);

				  },
				  error: function(xhr) {
				  }
				});
		});
	});
</script>

<script>
	// Get the modal
	var modal = document.getElementById("myModal");

	// Get the button that opens the modal
	var btn = document.getElementById("myBtnn");

	// Get the <span> element that closes the modal
	var span = document.getElementsByClassName("close")[0];

	// When the user clicks the button, open the modal 
	btn.onclick = function() {
		modal.style.display = "block";
	}

	// When the user clicks on <span> (x), close the modal
	span.onclick = function() {
		modal.style.display = "none";
	}

	// When the user clicks anywhere outside of the modal, close it
	window.onclick = function(event) {
		if (event.target == modal) {
			modal.style.display = "none";
		}
	}
</script>
<script type="text/javascript">
	var c = document.body.className;
	c = c.replace(/woocommerce-no-js/, 'woocommerce-js');
	document.body.className = c;
</script>
<script type='text/javascript'
	src='${pageContext.request.contextPath}/wp-content/plugins/floating-click-to-contact-buttons/main.js'></script>
<script type='text/javascript'>
	/* <![CDATA[ */
	var wpcf7 = {
		"apiSettings" : {
			"root" : "https:\/\/haisantruongsa.vn\/wp-json\/contact-form-7\/v1",
			"namespace" : "contact-form-7\/v1"
		}
	};
	/* ]]> */
</script>
<script type='text/javascript'
	src='${pageContext.request.contextPath}/wp-content/plugins/contact-form-7/includes/js/scripts.js'></script>
<script type='text/javascript'
	src='${pageContext.request.contextPath}/wp-content/plugins/devvn-quick-buy/js/jquery.validate.min.js'></script>
<script type='text/javascript'
	src='${pageContext.request.contextPath}/wp-includes/js/underscore.min.js?ver=1.8.3'></script>
<script type='text/javascript'>
	/* <![CDATA[ */
	var _wpUtilSettings = {
		"ajax" : {
			"url" : "\/wp-admin\/admin-ajax.php"
		}
	};
	/* ]]> */
</script>
<script type='text/javascript'
	src='${pageContext.request.contextPath}/wp-includes/js/wp-util.min.js'></script>
<script type='text/javascript'
	src='${pageContext.request.contextPath}/wp-content/plugins/woocommerce/assets/js/jquery-blockui/jquery.blockUI.min.js'></script>
<script type='text/javascript'>
	/* <![CDATA[ */
	var wc_add_to_cart_variation_params = {
		"wc_ajax_url" : "\/?wc-ajax=%%endpoint%%",
		"i18n_no_matching_variations_text" : "R\u1ea5t ti\u1ebfc, kh\u00f4ng c\u00f3 s\u1ea3n ph\u1ea9m n\u00e0o ph\u00f9 h\u1ee3p v\u1edbi l\u1ef1a ch\u1ecdn c\u1ee7a b\u1ea1n. H\u00e3y ch\u1ecdn m\u1ed9t ph\u01b0\u01a1ng th\u1ee9c k\u1ebft h\u1ee3p kh\u00e1c.",
		"i18n_make_a_selection_text" : "Ch\u1ecdn c\u00e1c t\u00f9y ch\u1ecdn cho s\u1ea3n ph\u1ea9m tr\u01b0\u1edbc khi cho s\u1ea3n ph\u1ea9m v\u00e0o gi\u1ecf h\u00e0ng c\u1ee7a b\u1ea1n.",
		"i18n_unavailable_text" : "R\u1ea5t ti\u1ebfc, s\u1ea3n ph\u1ea9m n\u00e0y hi\u1ec7n kh\u00f4ng t\u1ed3n t\u1ea1i. H\u00e3y ch\u1ecdn m\u1ed9t ph\u01b0\u01a1ng th\u1ee9c k\u1ebft h\u1ee3p kh\u00e1c."
	};
	/* ]]> */
</script>
<!-- <script type='text/javascript'
	src='${pageContext.request.contextPath}/wp-content/plugins/woocommerce/assets/js/frontend/add-to-cart-variation.min.js'></script> -->
<script type='text/javascript'>
	/* <![CDATA[ */
	var devvn_quickbuy_array = {
		"ajaxurl" : "https:\/\/haisantruongsa.vn\/wp-admin\/admin-ajax.php",
		"siteurl" : "https:\/\/haisantruongsa.vn",
		"popup_error" : "\u0110\u1eb7t h\u00e0ng th\u1ea5t b\u1ea1i. Vui l\u00f2ng \u0111\u1eb7t h\u00e0ng l\u1ea1i. Xin c\u1ea3m \u01a1n!",
		"out_of_stock_mess" : "H\u1ebft h\u00e0ng!",
		"price_decimal" : ".",
		"num_decimals" : "0",
		"price_thousand" : ",",
		"currency_format" : "\u20ab",
		"qty_text" : "S\u1ed1 l\u01b0\u1ee3ng",
		"name_text" : "H\u1ecd v\u00e0 t\u00ean l\u00e0 b\u1eaft bu\u1ed9c",
		"phone_text" : "S\u1ed1 \u0111i\u1ec7n tho\u1ea1i l\u00e0 b\u1eaft bu\u1ed9c",
		"valid_phone_text" : "Nh\u1eadp l\u1ea1i s\u1ed1 \u0111i\u1ec7n tho\u1ea1i l\u00e0 b\u1eaft bu\u1ed9c",
		"valid_phone_text_equalto" : "Vui l\u00f2ng nh\u1eadp l\u1ea1i c\u00f9ng s\u1ed1 \u0111i\u1ec7n tho\u1ea1i",
		"email_text" : "Email l\u00e0 b\u1eaft bu\u1ed9c",
		"quan_text" : "Qu\u1eadn huy\u1ec7n l\u00e0 b\u1eaft bu\u1ed9c",
		"xa_text" : "X\u00e3\/Ph\u01b0\u1eddng l\u00e0 b\u1eaft bu\u1ed9c",
		"address_text" : "S\u1ed1 nh\u00e0, t\u00ean \u0111\u01b0\u1eddng l\u00e0 b\u1eaft bu\u1ed9c"
	};
	/* ]]> */
</script>
<!-- <script type='text/javascript'
	src='${pageContext.request.contextPath}/wp-content/plugins/devvn-quick-buy/js/devvn-quick-buy.js'></script> -->
<script type='text/javascript'
	src='${pageContext.request.contextPath}/wp-content/plugins/ot-flatsome-vertical-menu/assets/vendor/superfish/hoverIntent.js'></script>
<script type='text/javascript'
	src='${pageContext.request.contextPath}/wp-content/plugins/ot-flatsome-vertical-menu/assets/vendor/superfish/superfish.min.js'></script>
<script type='text/javascript'
	src='${pageContext.request.contextPath}/wp-content/plugins/ot-flatsome-vertical-menu/assets/js/ot-vertical-menu.min.js'></script>
<script type='text/javascript'>
	/* <![CDATA[ */
	var wc_add_to_cart_params = {
		"ajax_url" : "\/wp-admin\/admin-ajax.php",
		"wc_ajax_url" : "\/?wc-ajax=%%endpoint%%",
		"i18n_view_cart" : "Xem gi\u1ecf h\u00e0ng",
		"cart_url" : "https:\/\/haisantruongsa.vn\/gio-hang\/",
		"is_cart" : "",
		"cart_redirect_after_add" : "no"
	};
	/* ]]> */
</script>
<script type='text/javascript'
	src='${pageContext.request.contextPath}/wp-content/plugins/woocommerce/assets/js/frontend/add-to-cart.min.js'></script>
<script type='text/javascript'
	src='${pageContext.request.contextPath}/wp-content/plugins/woocommerce/assets/js/js-cookie/js.cookie.min.js'></script>
<script type='text/javascript'>
	/* <![CDATA[ */
	var woocommerce_params = {
		"ajax_url" : "\/wp-admin\/admin-ajax.php",
		"wc_ajax_url" : "\/?wc-ajax=%%endpoint%%"
	};
	/* ]]> */
</script>
<script type='text/javascript'
	src='${pageContext.request.contextPath}/wp-content/plugins/woocommerce/assets/js/frontend/woocommerce.min.js'></script>
<script type='text/javascript'>
	/* <![CDATA[ */
	var wc_cart_fragments_params = {
		"ajax_url" : "\/wp-admin\/admin-ajax.php",
		"wc_ajax_url" : "\/?wc-ajax=%%endpoint%%",
		"cart_hash_key" : "wc_cart_hash_d87e3cc10a1ec70f7804f755840b39d0",
		"fragment_name" : "wc_fragments_d87e3cc10a1ec70f7804f755840b39d0",
		"request_timeout" : "5000"
	};
	/* ]]> */
</script>
<script type='text/javascript'
	src='${pageContext.request.contextPath}/wp-content/plugins/woocommerce/assets/js/frontend/cart-fragments.min.js'></script>

<script type='text/javascript'
	src='${pageContext.request.contextPath}/wp-includes/js/hoverIntent.min.js?ver=1.8.1'></script>
<script type='text/javascript'>
	/* <![CDATA[ */
	var flatsomeVars = {
		"ajaxurl" : "https:\/\/haisantruongsa.vn\/wp-admin\/admin-ajax.php",
		"rtl" : "",
		"sticky_height" : "70",
		"lightbox" : {
			"close_markup" : "<button title=\"%title%\" type=\"button\" class=\"mfp-close\"><svg xmlns=\"http:\/\/www.w3.org\/2000\/svg\" width=\"28\" height=\"28\" viewBox=\"0 0 24 24\" fill=\"none\" stroke=\"currentColor\" stroke-width=\"2\" stroke-linecap=\"round\" stroke-linejoin=\"round\" class=\"feather feather-x\"><line x1=\"18\" y1=\"6\" x2=\"6\" y2=\"18\"><\/line><line x1=\"6\" y1=\"6\" x2=\"18\" y2=\"18\"><\/line><\/svg><\/button>",
			"close_btn_inside" : false
		},
		"user" : {
			"can_edit_pages" : false
		}
	};
	/* ]]> */
</script>
<script type='text/javascript'
	src='${pageContext.request.contextPath}/wp-content/themes/flatsome/assets/js/flatsome.js'></script>
<script type='text/javascript'
	src='${pageContext.request.contextPath}/wp-content/themes/flatsome/inc/extensions/flatsome-lazy-load/flatsome-lazy-load.js'></script>
<script type='text/javascript'
	src='${pageContext.request.contextPath}/wp-content/themes/flatsome/assets/js/woocommerce.js?ver=3.10.1'></script>
<script type='text/javascript'
	src='${pageContext.request.contextPath}/wp-includes/js/wp-embed.min.js'></script>
