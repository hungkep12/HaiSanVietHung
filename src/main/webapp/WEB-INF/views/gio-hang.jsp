<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<!--[if IE 9 ]> <html lang="vi-VN" class="ie9 loading-site no-js"> <![endif]-->
<!--[if IE 8 ]> <html lang="vi-VN" class="ie8 loading-site no-js"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="vi-VN" class="loading-site no-js">
<!--<![endif]-->
<head>
<title>Giỏ hàng | Hải Sản Việt Hưng</title>

<link rel='stylesheet' id='select2-css'
	href='${pageContext.request.contextPath}/wp-content/plugins/woocommerce/assets/css/select2.css?ver=3.8.1'
	type='text/css' media='all' />

<%@ include file="/WEB-INF/views/layout/include-in-head.jsp"%>
</head>

<body data-rsssl=1
	class="page-template page-template-page-cart page-template-page-cart-php page page-id-11 theme-flatsome ot-vertical-menu ot-submenu-top woocommerce-cart woocommerce-page woocommerce-no-js lightbox nav-dropdown-has-arrow">


	<a class="skip-link screen-reader-text" href="#main">Skip to
		content</a>

	<div id="wrapper">


		<%@ include file="/WEB-INF/views/layout/header.jsp"%>


		<main id="main" class="">

			<div class="checkout-page-title page-title">
				<div class="page-title-inner flex-row medium-flex-wrap container">
					<div class="flex-col flex-grow medium-text-center">
						<nav
							class="breadcrumbs flex-row flex-row-center heading-font checkout-breadcrumbs text-center strong h2 uppercase">
							<a href="${pageContext.request.contextPath}/gio-hang"
								class="current"> GIỏ hàng </a> <span
								class="divider hide-for-small"><i
								class="icon-angle-right"></i></span> <a
								href="${pageContext.request.contextPath}/thanh-toan"
								class="hide-for-small"> Thanh toán </a> <span
								class="divider hide-for-small"><i
								class="icon-angle-right"></i></span> <a href="#"
								class="no-click hide-for-small"> Hoàn tất </a>
						</nav>
					</div>
					<!-- .flex-left -->
				</div>
				<!-- flex-row -->
			</div>
			<!-- .page-title -->
			<div class="cart-container container page-wrapper page-checkout">
				<div class="woocommerce">
					<%
						if (session.getAttribute("cart") != null) {
					%>
					<div class="woocommerce-notices-wrapper"></div>
					<div class="woocommerce row row-large row-divided">
						<div class="col large-7 pb-0 cart-auto-refresh">


							<form class="woocommerce-cart-form" id="a-cart-form"
								action="javascript:void(0);" method="post">
								<div class="cart-wrapper sm-touch-scroll">


									<table
										class="shop_table shop_table_responsive cart woocommerce-cart-form__contents"
										cellspacing="0">
										<thead>
											<tr>
												<th class="product-name" colspan="3">Sản phẩm</th>
												<th class="product-price">Giá</th>
												<th class="product-quantity">Số lượng</th>
												<th class="product-subtotal">Tạm tính</th>
											</tr>
										</thead>
										<tbody>
											<fmt:setLocale value="vn" />
											<c:forEach var="cart" items="${sessionScope.cart }">
												<tr class="woocommerce-cart-form__cart-item cart_item">
													<!--${pageContext.request.contextPath}/gio-hang/cart?id=${cart.products.id }&action=delete -->

													<td class="product-remove"><a
														href="javascript:void(0);" class="remove"
														aria-label="Xóa sản phẩm này" data-id=${cart.products.id }>×</a></td>

													<td class="product-thumbnail"><a
														href="${pageContext.request.contextPath}/${cart.products.imageProducts[1].URL }"><img
															width="300" height="300"
															src="${pageContext.request.contextPath}/${cart.products.imageProducts[1].URL }"
															data-src="${pageContext.request.contextPath}/san-pham/${cart.products.imageProducts[1].URL }"
															class="attachment-woocommerce_thumbnail size-woocommerce_thumbnail lazy-load-active"
															alt="" sizes="(max-width: 300px) 100vw, 300px"></a></td>

													<td class="product-name" data-title="Sản phẩm"><a
														href="${pageContext.request.contextPath}/san-pham/${cart.products.nameProduct }">${cart.products.nameProduct }</a>
														<div class="show-for-small mobile-product-price">
															<span class="mobile-product-price__qty">${cart.quantity }
																x </span> <span class="woocommerce-Price-amount amount">
																<fmt:formatNumber value="${cart.products.price }"
																	type="currency" />
															</span>
														</div></td>

													<td class="product-price" data-title="Giá"><span
														class="woocommerce-Price-amount amount"><fmt:formatNumber
																value="${cart.products.price }" type="currency" /></span></td>

													<td class="product-quantity" data-title="Số lượng">
														<div class="quantity buttons_added">
															<input type="button" value="-"
																class="minus button is-form"> <label
																class="screen-reader-text">Số lượng</label> <input
																type="number" class="qty text" autocomplete="off"
																step="1" min="0" max=${cart.products.quantity }
																title="SL" size="4" inputmode="numeric" name="quantity"
																value="${cart.quantity }"> <input type="button"
																value="+" class="plus button is-form">
														</div>
													</td>

													<td class="product-subtotal" data-title="Tạm tính"><span
														class="woocommerce-Price-amount amount"><fmt:formatNumber
																value="${cart.quantity*cart.products.price }"
																type="currency" /></span></td>
												</tr>
											</c:forEach>

											<tr>
												<td colspan="6"><input type="submit"
													class="button primary mt-0 pull-left small"
													name="update_cart" value="Cập nhật giỏ hàng"></td>
											</tr>

										</tbody>
									</table>
								</div>
							</form>
							<table>
								<tr>
									<td colspan="6" class="actions clear">
										<div class="continue-shopping pull-left text-left">
											<a class="button-continue-shopping button primary is-outline"
												href="${pageContext.request.contextPath}/san-pham">
												←&nbsp;Tiếp tục xem sản phẩm </a>
										</div>
									</td>
								</tr>
							</table>
						</div>


						<div class="cart-collaterals large-5 col pb-0">

							<div class="cart-sidebar col-inner ">
								<div class="cart_totals ">

									<table cellspacing="0">
										<thead>
											<tr>
												<th class="product-name" colspan="2"
													style="border-width: 3px;">Cộng giỏ hàng</th>
											</tr>
										</thead>
									</table>

									<h2>Cộng giỏ hàng</h2>

									<table cellspacing="0" class="shop_table shop_table_responsive">

										<tbody>
											<tr class="order-total">
												<th>Tổng</th>
												<c:set var="s" value="0"></c:set>
												<c:forEach var="cart" items="${sessionScope.cart }">
													<c:set var="s"
														value="${cart.quantity*cart.products.price+s }"></c:set>

												</c:forEach>
												<td data-title="Tổng"><strong><span
														class="woocommerce-Price-amount amount"> <fmt:formatNumber
																value="${s }" type="currency" />
													</span></strong></td>
											</tr>


										</tbody>
									</table>

									<div class="wc-proceed-to-checkout">

										<a href="${pageContext.request.contextPath}/thanh-toan"
											class="checkout-button button alt wc-forward"> Tiến hành
											thanh toán</a>
									</div>


								</div>

								<div class="cart-sidebar-content relative"></div>
							</div>
						</div>
					</div>

					<div class="cart-footer-content after-cart-content relative"></div>
					<%
						} else {
					%>
					<div class="text-center pt pb">
						<div class="woocommerce-notices-wrapper"></div>
						<p class="cart-empty woocommerce-info">Chưa có sản phẩm nào
							trong giỏ hàng.</p>
						<p class="return-to-shop">
							<a class="button primary wc-backward"
								href="${pageContext.request.contextPath}/san-pham"> Quay trở
								lại cửa hàng </a>
						</p>
					</div>
					<%
						}
					%>
				</div>
			</div>


		</main>
		<!-- #main -->

		<%@ include file="/WEB-INF/views/layout/footer-and-more.jsp"%>

		<%@include file="/WEB-INF/views/layout/include2.jsp"%>

		<script type='text/javascript'>
			/* <![CDATA[ */
			var wc_country_select_params = {
				"countries" : "{\"VN\":[]}",
				"i18n_select_state_text" : "Ch\u1ecdn m\u1ed9t t\u00f9y ch\u1ecdn\u2026",
				"i18n_no_matches" : "Kh\u00f4ng t\u00ecm th\u1ea5y k\u1ebft qu\u1ea3 ph\u00f9 h\u1ee3p",
				"i18n_ajax_error" : "Kh\u00f4ng t\u1ea3i \u0111\u01b0\u1ee3c",
				"i18n_input_too_short_1" : "Vui l\u00f2ng nh\u1eadp 1 ho\u1eb7c nhi\u1ec1u k\u00fd t\u1ef1",
				"i18n_input_too_short_n" : "Vui l\u00f2ng nh\u1eadp %qty% ho\u1eb7c nhi\u1ec1u k\u00fd t\u1ef1",
				"i18n_input_too_long_1" : "Vui l\u00f2ng x\u00f3a 1 k\u00fd t\u1ef1",
				"i18n_input_too_long_n" : "Vui l\u00f2ng x\u00f3a %qty%  k\u00fd t\u1ef1",
				"i18n_selection_too_long_1" : "B\u1ea1n ch\u1ec9 c\u00f3 th\u1ec3 ch\u1ecdn 1 s\u1ea3n ph\u1ea9m",
				"i18n_selection_too_long_n" : "B\u1ea1n c\u00f3 th\u1ec3 ch\u1ecdn %qty% s\u1ea3n ph\u1ea9m",
				"i18n_load_more" : "T\u1ea3i th\u00eam k\u1ebft qu\u1ea3\u2026",
				"i18n_searching" : "T\u00ecm ki\u1ebfm\u2026"
			};
			/* ]]> */
		</script>
		<script type='text/javascript'
			src='${pageContext.request.contextPath}/wp-content/plugins/woocommerce/assets/js/frontend/country-select.min.js?ver=3.8.1'></script>
		<script type='text/javascript'>
			/* <![CDATA[ */
			var wc_address_i18n_params = {
				"locale" : "{\"VN\":{\"state\":{\"required\":false,\"hidden\":true},\"postcode\":{\"required\":false,\"hidden\":false},\"address_2\":{\"required\":false,\"hidden\":true}},\"default\":{\"first_name\":{\"required\":true,\"class\":[\"form-row-first\"],\"autocomplete\":\"given-name\"},\"last_name\":{\"required\":true,\"class\":[\"form-row-last\"],\"autocomplete\":\"family-name\"},\"company\":{\"class\":[\"form-row-wide\"],\"autocomplete\":\"organization\",\"required\":false},\"country\":{\"type\":\"country\",\"required\":true,\"class\":[\"form-row-wide\",\"address-field\",\"update_totals_on_change\"],\"autocomplete\":\"country\"},\"address_1\":{\"required\":true,\"class\":{\"1\":\"address-field\",\"2\":\"form-row-first\"},\"autocomplete\":\"address-line1\"},\"address_2\":{\"class\":{\"1\":\"address-field\",\"2\":\"form-row-last\"},\"autocomplete\":\"address-line2\",\"required\":false},\"city\":{\"required\":true,\"class\":[\"form-row-wide\",\"address-field\"],\"autocomplete\":\"address-level2\"},\"state\":{\"type\":\"state\",\"required\":true,\"class\":[\"form-row-wide\",\"address-field\"],\"validate\":[\"state\"],\"autocomplete\":\"address-level1\"},\"postcode\":{\"required\":true,\"class\":[\"form-row-wide\",\"address-field\"],\"validate\":[\"postcode\"],\"autocomplete\":\"postal-code\"}}}",
				"locale_fields" : "{\"address_1\":\"#billing_address_1_field, #shipping_address_1_field\",\"address_2\":\"#billing_address_2_field, #shipping_address_2_field\",\"state\":\"#billing_state_field, #shipping_state_field, #calc_shipping_state_field\",\"postcode\":\"#billing_postcode_field, #shipping_postcode_field, #calc_shipping_postcode_field\",\"city\":\"#billing_city_field, #shipping_city_field, #calc_shipping_city_field\"}",
				"i18n_required_text" : "b\u1eaft bu\u1ed9c",
				"i18n_optional_text" : "tu\u1ef3 ch\u1ecdn"
			};
			/* ]]> */
		</script>
		<script type='text/javascript'
			src='${pageContext.request.contextPath}/wp-content/plugins/woocommerce/assets/js/frontend/address-i18n.min.js?ver=3.8.1'></script>
		<script type='text/javascript'>
			/* <![CDATA[ */
			var wc_cart_params = {
				"ajax_url" : "\/wp-admin\/admin-ajax.php",
				"wc_ajax_url" : "\/?wc-ajax=%%endpoint%%",
				"update_shipping_method_nonce" : "d489a67a57",
				"apply_coupon_nonce" : "39536b1615",
				"remove_coupon_nonce" : "7a0fad64c5"
			};
			/* ]]> */
		</script>
		<!-- <script type='text/javascript'
			src='${pageContext.request.contextPath}/wp-content/plugins/woocommerce/assets/js/frontend/cart.min.js?ver=3.8.1'></script> -->
		<script type='text/javascript'
			src='${pageContext.request.contextPath}/wp-content/plugins/woocommerce/assets/js/selectWoo/selectWoo.full.min.js?ver=1.0.6'></script>
		<script type='text/javascript'>
			/* <![CDATA[ */
			var pwsL10n = {
				"unknown" : "M\u1eadt kh\u1ea9u m\u1ea1nh kh\u00f4ng x\u00e1c \u0111\u1ecbnh",
				"short" : "R\u1ea5t y\u1ebfu",
				"bad" : "Y\u1ebfu",
				"good" : "Trung b\u00ecnh",
				"strong" : "M\u1ea1nh",
				"mismatch" : "M\u1eadt kh\u1ea9u kh\u00f4ng kh\u1edbp"
			};
			/* ]]> */
		</script>
		<script type='text/javascript'
			src='${pageContext.request.contextPath}/wp-admin/js/password-strength-meter.min.js?ver=5.3.6'></script>
		<script type='text/javascript'>
			/* <![CDATA[ */
			var wc_password_strength_meter_params = {
				"min_password_strength" : "3",
				"stop_checkout" : "",
				"i18n_password_error" : "Vui l\u00f2ng nh\u1eadp m\u1eadt kh\u1ea9u kh\u00f3 h\u01a1n.",
				"i18n_password_hint" : "G\u1ee3i \u00fd: M\u1eadt kh\u1ea9u ph\u1ea3i c\u00f3 \u00edt nh\u1ea5t 12 k\u00fd t\u1ef1. \u0110\u1ec3 n\u00e2ng cao \u0111\u1ed9 b\u1ea3o m\u1eadt, s\u1eed d\u1ee5ng ch\u1eef in hoa, in th\u01b0\u1eddng, ch\u1eef s\u1ed1 v\u00e0 c\u00e1c k\u00fd t\u1ef1 \u0111\u1eb7c bi\u1ec7t nh\u01b0 ! \" ? $ % ^ & )."
			};
			/* ]]> */
		</script>
		<script type='text/javascript'
			src='${pageContext.request.contextPath}/wp-content/plugins/woocommerce/assets/js/frontend/password-strength-meter.min.js?ver=3.8.1'></script>


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
			src='${pageContext.request.contextPath}/wp-content/themes/flatsome/inc/extensions/flatsome-cart-refresh/flatsome-cart-refresh.js?ver=3.10.1'></script>
		<!-- update from cart -->
		<script>
			$(document)
					.ready(
							function() {
								$("#a-cart-form")
										.submit(
												function() {
													var qty = [];
													var temp = document
															.getElementsByClassName("qty text");
													for (let i = 0; i < temp.length; i++) {
														qty[i] = (temp[i].value);
													}
													$
															.ajax({
																url : "${pageContext.request.contextPath}/ajax/update-cart",
																type : "post", //send it through get method
																data : {
																	quantity : qty
																},
																success : function(
																		response) {
																	document.location
																			.reload(true);
																},
																error : function(
																		xhr) {
																}
															});
												});
							});
		</script>
</body>
</html>
