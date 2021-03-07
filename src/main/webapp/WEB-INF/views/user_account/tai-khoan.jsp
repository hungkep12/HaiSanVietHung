<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

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
</head>

<body data-rsssl=1
	class="page-template page-template-page-my-account page-template-page-my-account-php page page-id-13 logged-in theme-flatsome ot-vertical-menu ot-submenu-top woocommerce-account woocommerce-page woocommerce-no-js lightbox nav-dropdown-has-arrow">


	<a class="skip-link screen-reader-text" href="#main">Skip to
		content</a>

	<div id="wrapper">



		<%@ include file="/WEB-INF/views/layout/header.jsp"%>


		<%@ include file="/WEB-INF/views/user_account/main.jsp"%>

		<div class="large-9 col">
			<div class="woocommerce">
				<div class="woocommerce-MyAccount-content">
					<div class="woocommerce-notices-wrapper"></div>
					<p>
						Xin chào <strong> <%
 	if (session.getAttribute("displayNameUser") != null) {
 %> <%=session.getAttribute("displayNameUser")%> <%
 	} else {
 %> <%=session.getAttribute("emailUser")%> <%
 	}
 %>
						</strong> (không phải <strong> <%
 	if (session.getAttribute("displayNameUser") != null) {
 %> <%=session.getAttribute("displayNameUser")%> <%
 	} else {
 %> <%=session.getAttribute("emailUser")%> <%
 	}
 %>
						</strong>? <a
							href="${pageContext.request.contextPath}/tai-khoan/customer-logout/">Đăng
							xuất</a>)
					</p>

					<p>
						Từ trang quản lý tài khoản bạn có thể xem <a
							href="${pageContext.request.contextPath}/tai-khoan/don-hang">đơn
							hàng mới</a>, quản lý <a
							href="${pageContext.request.contextPath}/tai-khoan/edit-address/<%=session.getAttribute("displayNameUser")%>">địa
							chỉ</a>, và <a
							href="${pageContext.request.contextPath}/tai-khoan/edit-account/<%=session.getAttribute("displayNameUser")%>">sửa
							thông tin tài khoản</a>.
					</p>

					<ul class="dashboard-links">
						<li
							class="woocommerce-MyAccount-navigation-link woocommerce-MyAccount-navigation-link--orders">
							<a href="${pageContext.request.contextPath}/tai-khoan/don-hang">Đơn
								hàng</a>
						</li>

						<li
							class="woocommerce-MyAccount-navigation-link woocommerce-MyAccount-navigation-link--dashboard is-active active">
							<a href="${pageContext.request.contextPath}/tai-khoan/logged">Bảng
								điều khiển</a>
						</li>

						<li
							class="woocommerce-MyAccount-navigation-link woocommerce-MyAccount-navigation-link--edit-address">
							<a
							href="${pageContext.request.contextPath}/tai-khoan/edit-address/<%=session.getAttribute("displayNameUser")%>">Địa
								chỉ</a>
						</li>
						<li
							class="woocommerce-MyAccount-navigation-link woocommerce-MyAccount-navigation-link--edit-account">
							<a
							href="${pageContext.request.contextPath}/tai-khoan/edit-account/<%=session.getAttribute("displayNameUser")%>">Thông
								tin tài khoản</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<!-- .large-9 -->
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
</body>
</html>
