<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<main id="main" class="">



	<div class="my-account-header page-title normal-title
										">


		<div class="page-title-inner flex-row  container">
			<div class="flex-col flex-grow medium-text-center">

				<h1 class="uppercase mb-0">Tài khoản</h1>
				<small class="uppercase">Bảng điều khiển</small>
			</div>
			<!-- .flex-left -->
		</div>
		<!-- flex-row -->
	</div>
	<!-- .page-title -->


	<div class="page-wrapper my-account mb">
		<div class="container" role="main">


			<div class="row vertical-tabs">
				<div class="large-3 col col-border">
					<div class="account-user circle">
						<span class="image mr-half inline-block"> <img alt=""
							src="https://secure.gravatar.com/avatar/18d2736f2762424a45724891cdda27e9?s=70&amp;d=mm&amp;r=g"
							data-src="https://secure.gravatar.com/avatar/18d2736f2762424a45724891cdda27e9?s=70&amp;d=mm&amp;r=g"
							srcset="https://secure.gravatar.com/avatar/18d2736f2762424a45724891cdda27e9?s=140&amp;d=mm&amp;r=g 2x"
							data-srcset="https://secure.gravatar.com/avatar/18d2736f2762424a45724891cdda27e9?s=140&amp;d=mm&amp;r=g 2x"
							class="avatar avatar-70 photo lazy-load-active" height="70"
							width="70">
						</span> <span class="user-name inline-block"> <%
 	if (session.getAttribute("displayNameUser") != null) {
 %> <%=session.getAttribute("displayNameUser")%> <%
 	} else {
 %> <%=session.getAttribute("emailUser")%> <%
 	}
 %> <em class="user-id op-5">#<%=session.getAttribute("idUser")%></em>
						</span>

					</div>


					<ul id="my-account-nav"
						class="account-nav nav nav-line nav-uppercase nav-vertical mt-half">

						<li
							class="woocommerce-MyAccount-navigation-link woocommerce-MyAccount-navigation-link--dashboard">
							<a href="${pageContext.request.contextPath}/tai-khoan/">Bảng
								điều khiển</a> <!-- empty -->
						</li>

						<li
							class="woocommerce-MyAccount-navigation-link woocommerce-MyAccount-navigation-link--dashboard">
							<a href="${pageContext.request.contextPath}/tai-khoan/don-hang">Đơn
								hàng</a> <!-- empty -->
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
							href="${pageContext.request.contextPath}/tai-khoan/edit-account/<%=session.getAttribute("displayNameUser")%> ">Thông
								tin tài khoản</a>
						</li>
						<li
							class="woocommerce-MyAccount-navigation-link woocommerce-MyAccount-navigation-link--customer-logout">
							<a
							href="${pageContext.request.contextPath}/tai-khoan/customer-logout/">Đăng
								xuất</a>
						</li>
					</ul>
					<!-- .account-nav -->
				</div>
				<!-- .large-3 -->