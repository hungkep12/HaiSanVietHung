<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!-- tích hợp JSTL vào trong JSP -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page import="java.util.Date"%>

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
	class="page-template page-template-page-checkout page-template-page-checkout-php page page-id-12 theme-flatsome ot-vertical-menu ot-submenu-top woocommerce-checkout woocommerce-page woocommerce-order-received woocommerce-no-js lightbox nav-dropdown-has-arrow">


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
							<a href="${pageContext.request.contextPath}/gio-hang/"
								class="hide-for-small"> Giỏ hàng </a> <span
								class="divider hide-for-small"><i
								class="icon-angle-right"></i></span> <a
								href="${pageContext.request.contextPath}/thanh-toan/"
								class="hide-for-small"> Thanh toán </a> <span
								class="divider hide-for-small"><i
								class="icon-angle-right"></i></span> <a href="#"
								class="no-click current"> Hoàn tất </a>
						</nav>
					</div>
					<!-- .flex-left -->
				</div>
				<!-- flex-row -->
			</div>
			<!-- .page-title -->
			<div class="cart-container container page-wrapper page-checkout">
				<div class="woocommerce">
					<div class="row">


						<div class="large-7 col">

							<p>Trả tiền mặt khi giao hàng.</p>
							<section class="woocommerce-order-details">

								<h2 class="woocommerce-order-details__title">Chi tiết đơn
									hàng</h2>

								<table
									class="woocommerce-table woocommerce-table--order-details shop_table order_details">

									<thead>
										<tr>
											<th class="woocommerce-table__product-name product-name">Sản
												phẩm</th>
											<th class="woocommerce-table__product-table product-total">Tổng</th>
										</tr>
									</thead>
									<fmt:setLocale value="vn" />
									<tbody>
										<c:set var="s" value="0"></c:set>
										<c:forEach var="listItem" items="${listItem }">
											<c:set var="s"
												value="${listItem.quantity*listItem.products.price+s }"></c:set>
											<tr class="woocommerce-table__line-item order_item">

												<td class="woocommerce-table__product-name product-name">
													<a
													href="${pageContext.request.contextPath}/san-pham/${listItem.products.nameProduct }">${listItem.products.nameProduct }</a>
													<strong class="product-quantity">&times;&nbsp;${listItem.quantity }</strong>
												</td>

												<td class="woocommerce-table__product-total product-total">
													<span class="woocommerce-Price-amount amount"> <fmt:formatNumber
															value="${listItem.quantity*listItem.products.price}"
															type="currency" /></span>
												</td>

											</tr>
										</c:forEach>

									</tbody>

									<tfoot>

										<tr>
											<th scope="row">Phương thức thanh toán:</th>
											<td>Trả tiền mặt khi nhận hàng</td>
										</tr>
										<tr>
											<th scope="row">Tổng cộng:</th>
											<td><span class="woocommerce-Price-amount amount"><fmt:formatNumber
														value="${s}" type="currency" /></span></td>
										</tr>
									</tfoot>
								</table>

							</section>


						</div>

						<div class="large-5 col">
							<div class="is-well col-inner entry-content">
								<p
									class="success-color woocommerce-notice woocommerce-notice--success woocommerce-thankyou-order-received">
									<strong>Cảm ơn bạn. Đơn hàng của bạn đã được nhận.</strong>
								</p>

								<ul
									class="woocommerce-order-overview woocommerce-thankyou-order-details order_details">

									<li class="woocommerce-order-overview__order order">Mã đơn
										hàng: <strong>${order.id }</strong>
									</li>

									<li class="woocommerce-order-overview__date date">Ngày: <strong><fmt:formatDate
												value="${order.dateOrder }" type="date" pattern="dd-MM-yyyy" /></strong>
									</li>


									<li class="woocommerce-order-overview__total total">Tổng
										cộng: <strong><span
											class="woocommerce-Price-amount amount"><fmt:formatNumber
													value="${s}" type="currency" /></span></strong>
									</li>

									<li class="woocommerce-order-overview__payment-method method">
										Phương thức thanh toán: <strong>Trả tiền mặt khi nhận
											hàng</strong>
									</li>

								</ul>

								<div class="clear"></div>
							</div>
						</div>



					</div>
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
