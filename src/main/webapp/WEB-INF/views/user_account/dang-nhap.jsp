<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!-- sử dụng taglibs của spring để bind-data từ end-point trả về. -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!-- tích hợp JSTL vào trong JSP -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<!--[if IE 9 ]> <html lang="vi-VN" class="ie9 loading-site no-js"> <![endif]-->
<!--[if IE 8 ]> <html lang="vi-VN" class="ie8 loading-site no-js"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="vi-VN" class="loading-site no-js">
<!--<![endif]-->
<head>
<title>Tài khoản | Hải Sản Việt Hưng</title>
<link rel='stylesheet' id='select2-css'
	href='${pageContext.request.contextPath}/wp-content/plugins/woocommerce/assets/css/select2.css?ver=3.8.1'
	type='text/css' media='all' />

<%@ include file="/WEB-INF/views/layout/include-in-head.jsp"%>

<script type='text/javascript'>
	/* <![CDATA[ */
	var _zxcvbnSettings = {
		"src" : "https:\/\/haisantruongsa.vn\/wp-includes\/js\/zxcvbn.min.js"
	};
	/* ]]> */
</script>
<script type='text/javascript'
	src='${pageContext.request.contextPath}/wp-includes/js/zxcvbn-async.min.js?ver=1.0'></script>

</head>

<body data-rsssl=1
	class="page-template page-template-page-my-account page-template-page-my-account-php page page-id-13 theme-flatsome ot-vertical-menu ot-submenu-top woocommerce-account woocommerce-page woocommerce-no-js lightbox nav-dropdown-has-arrow">


	<a class="skip-link screen-reader-text" href="#main">Skip to
		content</a>

	<div id="wrapper">


		<%@ include file="/WEB-INF/views/layout/header.jsp"%>


		<main id="main" class="">



			<div class="my-account-header page-title normal-title
										">


				<div class="page-title-inner flex-row  container">
					<div class="flex-col flex-grow medium-text-center">

						<div class="text-center social-login">
							<h1 class="uppercase mb-0">Tài khoản</h1>



						</div>

					</div>
					<!-- .flex-left -->
				</div>
				<!-- flex-row -->
			</div>
			<!-- .page-title -->

			<div class="page-wrapper my-account mb">
				<div class="container" role="main">



					<div class="woocommerce">
						<div class="woocommerce-notices-wrapper"></div>
						<div class="account-container lightbox-inner">


							<div class="col2-set row row-divided row-large"
								id="customer_login">

								<div class="col-1 large-6 col pb-0">


									<div class="account-login-inner">

										<h3 class="uppercase">Đăng nhập</h3>


										<form:form
											class="woocommerce-form woocommerce-form-login login"
											modelAttribute="login" method="post" action="/DangNhap">


											<p
												class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
												<label for="username">Địa chỉ email&nbsp;<span
													class="required">*</span>
												</label> <input type="text"
													class="woocommerce-Input woocommerce-Input--text input-text"
													name="email" id="email" autocomplete="email" value="" />
											</p>
											<p
												class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
												<label for="password">Mật khẩu&nbsp;<span
													class="required">*</span></label> <input
													class="woocommerce-Input woocommerce-Input--text input-text"
													type="password" name="password" id="password"
													autocomplete="current-password" />
											</p>
											<c:choose>
												<c:when test="${status=='wrong' }">
													<p style="color: red; font-size: 15px;">Sai tài khoản
														hoặc mật khẩu</p>
												</c:when>
											</c:choose>
											<p class="form-row">
												<label
													class="woocommerce-form__label woocommerce-form__label-for-checkbox woocommerce-form-login__rememberme">
													<input
													class="woocommerce-form__input woocommerce-form__input-checkbox"
													name="rememberme" type="checkbox" id="rememberme"
													value="forever" /> <span>Ghi nhớ mật khẩu</span>
												</label> <input type="hidden" id="woocommerce-login-nonce"
													name="woocommerce-login-nonce" value="f9081e8f77" /><input
													type="hidden" name="_wp_http_referer" value="/" />
												<form:button type="submit"
													class="woocommerce-Button button woocommerce-form-login__submit"
													style="background-color: #446084; color: #ffffff;">Đăng
													nhập</form:button>

											</p>
											<p class="woocommerce-LostPassword lost_password">
												<a href="#">Quên mật khẩu?</a>
											</p>


										</form:form>
									</div>
									<!-- .login-inner -->


								</div>

								<div class="col-2 large-6 col pb-0">

									<div class="account-register-inner">

										<h3 class="uppercase">Đăng ký</h3>

										<form:form method="post"
											class="woocommerce-form woocommerce-form-register register"
											modelAttribute="signUp" action="/DangKy">



											<p
												class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
												<label for="reg_email">Địa chỉ email&nbsp;<span
													class="required">*</span></label> <input type="email"
													class="woocommerce-Input woocommerce-Input--text input-text"
													name="email" id="email" autocomplete="email" value="" />
											</p>


											<p
												class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
												<label for="reg_password">Mật khẩu&nbsp;<span
													class="required">*</span></label> <input type="password"
													class="woocommerce-Input woocommerce-Input--text input-text"
													name="password" id="password" autocomplete="new-password" />
											</p>


											<div class="woocommerce-privacy-policy-text"></div>
											<p class="woocommerce-FormRow form-row">
												<input type="hidden" id="woocommerce-register-nonce"
													name="woocommerce-register-nonce" value="2458bf2c9f" /><input
													type="hidden" name="_wp_http_referer" value="/tai-khoan/" />
												<button type="submit" class="woocommerce-Button button"
													name="register" value="Đăng ký"
													style="background-color: #446084; color: #ffffff;">Đăng
													ký</button>
											</p>


										</form:form>

									</div>
									<!-- .register-inner -->

								</div>
								<!-- .large-6 -->

							</div>
							<!-- .row -->

						</div>
						<!-- .account-login-container -->

					</div>




				</div>
				<!-- .container -->
			</div>
			<!-- .page-wrapper.my-account  -->




		</main>
		<!-- #main -->

		<%@ include file="/WEB-INF/views/layout/footer-and-more.jsp"%>

		<%@ include file="/WEB-INF/views/layout/include2.jsp"%>


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
</body>
</html>
