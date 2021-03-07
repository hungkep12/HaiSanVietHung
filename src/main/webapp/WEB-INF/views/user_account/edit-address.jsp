<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<!--[if IE 9 ]> <html lang="vi-VN" class="ie9 loading-site no-js"> <![endif]-->
<!--[if IE 8 ]> <html lang="vi-VN" class="ie8 loading-site no-js"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="vi-VN" class="loading-site no-js">
<!--<![endif]-->
<head>
<title>Tài khoản | Hải sản Việt Hưng</title>

<link rel='stylesheet' id='select2-css'
	href='${pageContext.request.contextPath}/wp-content/plugins/woocommerce/assets/css/select2.css?ver=3.8.1'
	type='text/css' media='all' />

<%@ include file="/WEB-INF/views/layout/include-in-head.jsp"%>
</head>

<body data-rsssl=1
	class="page-template page-template-page-my-account page-template-page-my-account-php page page-id-13 logged-in theme-flatsome ot-vertical-menu ot-submenu-top woocommerce-account woocommerce-page woocommerce-no-js lightbox nav-dropdown-has-arrow">


	<a class="skip-link screen-reader-text" href="#main">Skip to
		content</a>

	<div id="wrapper">


		<title>Hải sản Việt Hưng- Ship đến tận nhà</title>
		<%@ include file="/WEB-INF/views/layout/header.jsp"%>

		<c:choose>
			<c:when test="${status=='success' }">
				<div
					class="message-container container alert-color medium-text-center">
					<span class="message-icon icon-close"></span> Sửa thành công
				</div>

			</c:when>
			<c:when test="${status=='fail' }">
				<div
					class="message-container container alert-color medium-text-center">
					<span class="message-icon icon-close"></span> Sửa thất bại
				</div>

			</c:when>

		</c:choose>
		<%@ include file="/WEB-INF/views/user_account/main.jsp"%>

		<div class="large-9 col">
			<div class="woocommerce">
				<div class="woocommerce-MyAccount-content">
					<div class="woocommerce-notices-wrapper"></div>

					<form:form method="post" action="/tai-khoan/edit-address"
						modelAttribute="addressUser">

						<h3>Địa chỉ</h3>
						<div class="woocommerce-address-fields">

							<div class="woocommerce-address-fields__field-wrapper">

								<p
									class="form-row address-field form-row-first validate-required"
									id="shipping_address_1_field" data-priority="50">
									<label for="shipping_address_1" class="">Địa chỉ&nbsp;<abbr
										class="required" title="bắt buộc">*</abbr>
									</label><span class="woocommerce-input-wrapper"><form:input
											type="text" class="input-text " path="address" id="address"
											placeholder="Địa chỉ" value="" autocomplete="address-line1" /></span>

								</p>
								<p style="color: red; font-size: 15px;" id="checkAddress"></p>
								<p
									class="form-row form-row-wide validate-required validate-phone"
									id="billing_phone_field" data-priority="100">
									<label for="billing_phone" class="">Số điện thoại&nbsp;<abbr
										class="required" title="bắt buộc">*</abbr></label><span
										class="woocommerce-input-wrapper"><form:input
											type="tel" class="input-text " path="phone" id="phone"
											placeholder="Số điện thoại" value="" autocomplete="tel" /></span>
								</p>
								<p style="color: red; font-size: 15px;" id="checkPhone"></p>
								<p
									class="form-row form-row-wide address-field validate-postcode"
									id="shipping_postcode_field" data-priority="90"
									data-o_class="form-row form-row-wide address-field validate-postcode">
									<label for="shipping_postcode" class="">Mã bưu
										điện&nbsp;<span class="optional">(tuỳ chọn)</span>
									</label><span class="woocommerce-input-wrapper"><form:input
											type="text" class="input-text " path="POSTCODE" id="POSTCODE"
											placeholder="Mã bưu điện" value=""
											autocomplete="postal-code" /></span>
								</p>
							</div>


							<p>
								<input type="submit" class="button" name="save_address" id="save"
									value="Lưu địa chỉ"
									style="background-color: #446084; color: #ffffff;" />

							</p>
						</div>

					</form:form>


				</div>
			</div>
		</div>
	</div>
	<!-- .row .vertical-tabs -->

	</div>
	<!-- .container -->
	</div>
	<!-- .page-wrapper.my-account  -->
	</main>
	<!-- #main -->

	<%@ include file="/WEB-INF/views/layout/footer-and-more.jsp"%>

	<%@include file="/WEB-INF/views/layout/include2.jsp"%>


	<script type='text/javascript'
		src='${pageContext.request.contextPath}/wp-content/plugins/woocommerce/assets/js/selectWoo/selectWoo.full.min.js?ver=1.0.6'></script>

	<script type="text/javascript">
		jQuery(function($) {
			//address
			$("#address").keyup(function() {
				var address = $(this).val();
				if (address == "") {
					$("#checkAddress").html("Địa chỉ không được trống");
					document.getElementById("save").disabled = true;
				} else if (address != "") {
					$("#checkAddress").html("");
					document.getElementById("save").disabled = false;
				}
			})
			//phone
			$("#phone").keyup(function() {
				var phone = $(this).val();
				if (phone == "") {
					$("#checkPhone").html("Điện thoại không được trống");
					document.getElementById("save").disabled = true;
				} else if (phone != "") {
					$("#checkPhone").html("");
					document.getElementById("save").disabled = false;
				}
			})

		});
	</script>
</body>
</html>
