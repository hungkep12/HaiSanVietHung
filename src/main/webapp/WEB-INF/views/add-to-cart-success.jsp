<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!-- tích hợp JSTL vào trong JSP -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<!--[if IE 9 ]> <html lang="vi-VN" class="ie9 loading-site no-js"> <![endif]-->
<!--[if IE 8 ]> <html lang="vi-VN" class="ie8 loading-site no-js"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<!-- 
 -->
<html lang="vi-VN" class="loading-site no-js">
<!--<![endif]-->
<head>
<title>Hải Sản Việt Hưng- Ship đến tận nhà</title>
<%@ include file="/WEB-INF/views/layout/include-in-head.jsp"%>

</head>

<body data-rsssl=1
	class="home page-template page-template-page-blank page-template-page-blank-php page page-id-41 theme-flatsome ot-vertical-menu ot-submenu-top woocommerce-no-js lightbox nav-dropdown-has-arrow">


	<a class="skip-link screen-reader-text" href="#main">Skip to
		content</a>

	<div id="wrapper">

		<%@ include file="/WEB-INF/views/layout/header.jsp"%>

		<main id="main" class="">
			<div class="row category-page-row">

				<div class="col large-3 hide-for-medium ">
					<div id="shop-sidebar" class="sidebar-inner col-inner">
						<aside id="custom_html-4"
							class="widget_text widget widget_custom_html">
							<div class="textwidget custom-html-widget">
								<aside id="text-7" class="widget widget_text">
									<div class="textwidget">
										<p>
											<img class="size-full wp-image-1684 aligncenter"
												src="${pageContext.request.contextPath}/wp-content/uploads/2020/03/banner-1.jpg"
												alt="" width="500" height="800">
										</p>
									</div>
								</aside>
							</div>
						</aside>

					</div>
					<!-- .sidebar-inner -->
				</div>
				<!-- #shop-sidebar -->

				<div class="col large-9">
					<div class="shop-container">

						<div class="woocommerce-notices-wrapper">
							<h1>Thêm thành công</h1>
						</div>
						<div
							class="products row row-small large-columns-4 medium-columns-3 small-columns-3">
							<div class="continue-shopping">
								<a class="button-continue-shopping button primary is-outline"
									href="#" onclick="GoBackWithRefresh();return false;">
									←&nbsp;Tiếp tục xem sản phẩm </a>
							</div>

						</div>
						<!-- box-image -->


						<!-- box-text -->
					</div>
					<!-- box -->
				</div>
				<!-- .col-inner -->
			</div>

			<!-- col -->
	</div>
	<!-- row -->
	</div>
	<!-- shop container -->
	<hr />


	</div>
	</main>

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
	<!-- Back to previous page and reload -->
	<script>
		function GoBackWithRefresh(event) {
			if ('referrer' in document) {
				window.location = document.referrer;
				/* OR */
				//location.replace(document.referrer);
			} else {
				window.history.back();
			}
		}
	</script>
</body>
</html>
