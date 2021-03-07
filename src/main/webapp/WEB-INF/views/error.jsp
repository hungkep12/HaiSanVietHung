<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!DOCTYPE html>
<!--[if IE 9 ]> <html lang="vi-VN" class="ie9 loading-site no-js"> <![endif]-->
<!--[if IE 8 ]> <html lang="vi-VN" class="ie8 loading-site no-js"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="vi-VN" class="loading-site no-js">
<!--<![endif]-->
<head>
<title>Nothing found for 404 Not Found</title>
<%@ include file="/WEB-INF/views/layout/include-in-head.jsp"%>
</head>

<body data-rsssl=1
	class="error404 theme-flatsome ot-vertical-menu ot-submenu-top woocommerce-no-js lightbox nav-dropdown-has-arrow">


	<a class="skip-link screen-reader-text" href="#main">Skip to
		content</a>

	<div id="wrapper">


		<%@ include file="/WEB-INF/views/layout/header.jsp"%>


		<main id="main" class="">
			<div id="primary" class="content-area">
				<main id="main" class="site-main container pt" role="main">
					<section class="error-404 not-found mt mb">
						<div class="row">
							<div class="col medium-3">
								<span class="header-font"
									style="font-size: 5em; font-weight: bold; opacity: .3">ERROR</span>
							</div>
							<div class="col medium-9">
								<header class="page-title">
									<h1 class="page-title">${errorMsg}</h1>
								</header>
								<!-- .page-title -->
								<div class="page-content">
									<p>It looks like nothing was found at this location. Maybe
										try one of the links below or a search?</p>
									<form method="get" class="searchform"
										action="${pageContext.request.contextPath}/search" role="search">
										<div class="flex-row relative">
											<div class="flex-col flex-grow">
												<input type="search" class="search-field mb-0" name="nameProduct"
													value="" id="s" placeholder="Tìm kiếm sản phẩm&hellip;" />
											</div>
											<!-- .flex-col -->
											<div class="flex-col">
												<button type="submit"
													class="ux-search-submit submit-button secondary button icon mb-0"
													aria-label="Submit">
													<i class="icon-search"></i>
												</button>
											</div>
											<!-- .flex-col -->
										</div>
										<!-- .flex-row -->
										<div class="live-search-results text-left z-top"></div>
									</form>
								</div>
								<!-- .page-content -->
							</div>
						</div>
						<!-- .row -->
					</section>
					<!-- .error-404 -->
				</main>
				<!-- #main -->
			</div>
			<!-- #primary -->

		</main>
		<!-- #main -->

		<%@ include file="/WEB-INF/views/layout/footer-and-more.jsp"%>

		<%@include file="/WEB-INF/views/layout/include2.jsp"%>

		<script type='text/javascript'>
			/* <![CDATA[ */
			var _zxcvbnSettings = {
				"src" : "https:\/\/haisantruongsa.vn\/wp-includes\/js\/zxcvbn.min.js"
			};
			/* ]]> */
		</script>
		<script type='text/javascript'
			src='${pageContext.request.contextPath}/wp-includes/js/zxcvbn-async.min.js'></script>
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
			src='${pageContext.request.contextPath}/wp-admin/js/password-strength-meter.min.js'></script>
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
			src='${pageContext.request.contextPath}/wp-content/plugins/woocommerce/assets/js/frontend/password-strength-meter.min.js'></script>
</body>
</html>
