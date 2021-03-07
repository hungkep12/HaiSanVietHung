<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!DOCTYPE html>
<!--[if IE 9 ]> <html lang="vi-VN" class="ie9 loading-site no-js"> <![endif]-->
<!--[if IE 8 ]> <html lang="vi-VN" class="ie8 loading-site no-js"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="vi-VN" class="loading-site no-js">
<!--<![endif]-->
<head>
<title>Chính sách vận chuyển | Hải Sản Việt Hưng</title>
<%@ include file="/WEB-INF/views/layout/include-in-head.jsp"%>
</head>

<body data-rsssl=1
	class="page-template-default page page-id-1774 logged-in theme-flatsome ot-vertical-menu ot-submenu-top woocommerce-no-js lightbox nav-dropdown-has-arrow">


	<a class="skip-link screen-reader-text" href="#main">Skip to
		content</a>

	<div id="wrapper">


		<%@ include file="/WEB-INF/views/layout/header.jsp"%>


		<main id="main" class="">
			<div id="content" class="content-area page-wrapper" role="main">
				<div class="row row-main">
					<div class="large-12 col">
						<div class="col-inner">
							<c:forEach var="policiesByTitle" items="${policiesByTitle }">
								<h1 style="text-align: center;">
									<strong>${policiesByTitle.title }</strong>
								</h1>
								${policiesByTitle.detail }
							</c:forEach>

						</div>
						<!-- .col-inner -->
					</div>
					<!-- .large-12 -->
				</div>
				<!-- .row -->
			</div>


		</main>
		<!-- #main -->

		<%@ include file="/WEB-INF/views/layout/footer-and-more.jsp"%>

		<%@include file="/WEB-INF/views/layout/include2.jsp"%>
</body>
</html>
