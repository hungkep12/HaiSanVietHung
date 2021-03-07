<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<!--[if IE 9 ]> <html lang="vi-VN" class="ie9 loading-site no-js"> <![endif]-->
<!--[if IE 8 ]> <html lang="vi-VN" class="ie8 loading-site no-js"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="vi-VN" class="loading-site no-js">
<!--<![endif]-->
<head>
<title>Thanh toán | Hải sản Việt Hưng</title>


<link rel='stylesheet' id='thwcfd-checkout-style-css'
	href='${pageContext.request.contextPath}/wp-content/plugins/woo-checkout-field-editor-pro/assets/css/thwcfd-public.css?ver=5.3.6'
	type='text/css' media='all' />
<link rel='stylesheet' id='select2-css'
	href='${pageContext.request.contextPath}/wp-content/plugins/woocommerce/assets/css/select2.css?ver=3.8.1'
	type='text/css' media='all' />

<%@ include file="/WEB-INF/views/layout/include-in-head.jsp"%>
</head>

<body data-rsssl=1
	class="page-template page-template-page-checkout page-template-page-checkout-php page page-id-12 logged-in theme-flatsome ot-vertical-menu ot-submenu-top woocommerce-checkout woocommerce-page woocommerce-no-js lightbox nav-dropdown-has-arrow">


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
								class="hide-for-small"> Giỏ hàng </a> <span
								class="divider hide-for-small"><i
								class="icon-angle-right"></i></span> <a
								href="${pageContext.request.contextPath}/thanh-toan"
								class="current"> Thanh toán </a> <span
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
					<div class="woocommerce-notices-wrapper"></div>

					<div class="woocommerce-notices-wrapper"></div>
					<form:form name="checkout" method="post"
						class="checkout woocommerce-checkout "
						action="${pageContext.request.contextPath}/thanh-toan/post"
						enctype="multipart/form-data" modelAttribute="pay">

						<div class="row pt-0 ">
							<div class="large-7 col  ">


								<div id="customer_details">
									<div class="clear">
										<div class="woocommerce-billing-fields">

											<h3>Thông tin thanh toán</h3>
											<div class="woocommerce-billing-fields__field-wrapper">
												<p
													class="form-row form-row-first thwcfd-field-wrapper thwcfd-field-text validate-required"
													id="billing_first_name_field" data-priority="10">
													<label for="billing_first_name" class="">Họ&nbsp;<abbr
														class="required" title="bắt buộc">*</abbr></label><span
														class="woocommerce-input-wrapper"><form:input
															type="text" class="input-text " path="fName"
															id="billing_first_name" placeholder="" value=""
															autocomplete="given-name" required="" /></span>
												</p>
												<p
													class="form-row form-row-last thwcfd-field-wrapper thwcfd-field-text validate-required"
													id="billing_last_name_field" data-priority="20">
													<label for="billing_last_name" class="">Tên&nbsp;<abbr
														class="required" title="bắt buộc">*</abbr></label><span
														class="woocommerce-input-wrapper"><form:input
															type="text" class="input-text " path="lName"
															id="billing_last_name" placeholder="" value=""
															autocomplete="family-name" required="" /></span>
												</p>
												<p
													class="form-row address-field form-row-wide thwcfd-field-wrapper thwcfd-field-text validate-required"
													id="billing_address_1_field" data-priority="50">
													<label for="billing_address_1" class="">Địa
														chỉ&nbsp;<abbr class="required" title="bắt buộc">*</abbr>
													</label><span class="woocommerce-input-wrapper"><form:input
															type="text" class="input-text " path="address"
															id="billing_address_1" required=""
															placeholder="Địa chỉ giao nhận và thanh toán" value=""
															autocomplete="address-line1" /></span>
												</p>
												<p
													class="form-row form-row-wide thwcfd-field-wrapper thwcfd-field-tel validate-required validate-phone"
													id="billing_phone_field" data-priority="100">
													<label for="billing_phone" class="">Số điện
														thoại&nbsp;<abbr class="required" title="bắt buộc">*</abbr>
													</label><span class="woocommerce-input-wrapper"><form:input
															type="tel" class="input-text " path="phone"
															id="billing_phone" placeholder="" value="" required="" /></span>
												</p>
												<p
													class="form-row form-row-wide thwcfd-field-wrapper thwcfd-field-email validate-required validate-email"
													id="billing_email_field" data-priority="110">
													<label for="billing_email" class="">Địa chỉ
														email&nbsp;<abbr class="required" title="bắt buộc">*</abbr>
													</label><span class="woocommerce-input-wrapper"><form:input
															type="email" class="input-text " path="email"
															id="billing_email" placeholder="" value="" required="" /></span>
												</p>
											</div>

										</div>

									</div>

									<div class="clear">
										<div class="woocommerce-shipping-fields"></div>

									</div>
								</div>



							</div>
							<!-- large-7 -->

							<div class="large-5 col">

								<div class="col-inner has-border">
									<div class="checkout-sidebar sm-touch-scroll">
										<h3 id="order_review_heading">Đơn hàng của bạn</h3>
										<fmt:setLocale value="vn" />
										<div id="order_review"
											class="woocommerce-checkout-review-order">
											<table
												class="shop_table woocommerce-checkout-review-order-table">
												<thead>
													<tr>
														<th class="product-name">Sản phẩm</th>
														<th class="product-total">Tạm tính</th>
													</tr>
												</thead>
												<tbody>
													<c:set var="s" value="0"></c:set>
													<c:forEach var="cart" items="${sessionScope.cart }">

														<c:set var="s"
															value="${cart.quantity*cart.products.price+s }"></c:set>
														<tr class="cart_item">
															<td class="product-name">${cart.products.nameProduct }&nbsp;
																<strong class="product-quantity">&times;&nbsp;${cart.quantity }</strong>
															</td>
															<td class="product-total"><span
																class="woocommerce-Price-amount amount"><fmt:formatNumber
																		value="${cart.quantity*cart.products.price }"
																		type="currency" /></span></td>
														</tr>
													</c:forEach>
												</tbody>
												<tfoot>

													<tr class="order-total">
														<th>Tổng</th>
														<td><strong><span
																class="woocommerce-Price-amount amount"><fmt:formatNumber
																		value="${s }" type="currency" /></span></strong></td>
													</tr>


												</tfoot>
											</table>
											<div id="payment" class="woocommerce-checkout-payment">

												<div class="form-row place-order">
													<noscript>
														Trình duyệt của bạn không hỗ trợ JavaScript, hoặc nó bị vô
														hiệu hóa, hãy đảm bảo bạn nhấp vào <em>Cập nhật giỏ
															hàng</em> trước khi bạn thanh toán. Bạn có thể phải trả nhiều
														hơn số tiền đã nói ở trên, nếu bạn không làm như vậy. <br />
														<button type="submit" class="button alt"
															name="woocommerce_checkout_update_totals"
															value="Cập nhật tổng">Cập nhật tổng</button>
													</noscript>

													<div class="woocommerce-terms-and-conditions-wrapper">

													</div>


													<button type="submit" class="button alt"
														name="woocommerce_checkout_place_order" id="place_order"
														value="Đặt hàng" data-value="Đặt hàng">Đặt hàng</button>

													<input type="hidden"
														id="woocommerce-process-checkout-nonce"
														name="woocommerce-process-checkout-nonce"
														value="be02eae74c" /><input type="hidden"
														name="_wp_http_referer" value="/thanh-toan/" />
												</div>
											</div>
										</div>

										<div class="woocommerce-privacy-policy-text"></div>
									</div>
								</div>

							</div>
							<!-- large-5 -->

						</div>
						<!-- row -->
					</form:form>

				</div>
			</div>


		</main>
		<!-- #main -->

		<%@ include file="/WEB-INF/views/layout/footer-and-more.jsp"%>

		<%@include file="/WEB-INF/views/layout/include2.jsp"%>

		<script type='text/javascript'
			src='${pageContext.request.contextPath}/wp-content/plugins/woocommerce/assets/js/select2/select2.full.min.js?ver=4.0.3'></script>
		<script type='text/javascript'
			src='${pageContext.request.contextPath}/wp-content/plugins/woo-checkout-field-editor-pro/assets/js/thwcfd-checkout.js?ver=1.4.0'></script>

		<script type='text/javascript'
			src='${pageContext.request.contextPath}/wp-content/plugins/woocommerce/assets/js/selectWoo/selectWoo.full.min.js?ver=1.0.6'></script>


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
			var wc_checkout_params = {
				"ajax_url" : "\/wp-admin\/admin-ajax.php",
				"wc_ajax_url" : "\/?wc-ajax=%%endpoint%%",
				"update_order_review_nonce" : "0c08e69b15",
				"apply_coupon_nonce" : "d4ccbed266",
				"remove_coupon_nonce" : "0a7470e290",
				"option_guest_checkout" : "yes",
				"checkout_url" : "\/?wc-ajax=checkout",
				"is_checkout" : "1",
				"debug_mode" : "1",
				"i18n_checkout_error" : "\u0110\u00e3 c\u00f3 l\u1ed7i x\u1ea3y ra trong qu\u00e1 tr\u00ecnh thanh to\u00e1n. Vui l\u00f2ng th\u1eed l\u1ea1i."
			};
			/* ]]> */
		</script>
</body>
</html>
