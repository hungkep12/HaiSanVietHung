<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
	<a class="navbar-brand" href="${pageContext.request.contextPath}/admin">Hải
		sản <strong class="text-danger">Việt Hưng</strong>
	</a>
	<button class="btn btn-link btn-sm order-1 order-lg-0"
		id="sidebarToggle" href="#">
		<i class="fas fa-bars"></i>
	</button>
	<!-- Navbar Search-->
	<form
		class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
		<div class="input-group">
			<input class="form-control" type="text" placeholder="Search for..."
				aria-label="Search" aria-describedby="basic-addon2" />
			<div class="input-group-append">
				<button class="btn btn-primary" type="button">
					<i class="fas fa-search"></i>
				</button>
			</div>
		</div>
	</form>
	<!-- Navbar-->
	<ul class="navbar-nav ml-auto ml-md-0">
		<li class="nav-item dropdown"><a class="nav-link dropdown-toggle"
			id="userDropdown" href="#" role="button" data-toggle="dropdown"
			aria-haspopup="true" aria-expanded="false"><i
				class="fas fa-user fa-fw"></i></a>
			<div class="dropdown-menu dropdown-menu-right"
				aria-labelledby="userDropdown">
				<a class="dropdown-item" href="${pageContext.request.contextPath}/admin/admins-account/<%=session.getAttribute("idAdmin")%>">Edit profile</a> <a
					class="dropdown-item" href="#">Activity Log</a>
				<div class="dropdown-divider"></div>
				<a class="dropdown-item"
					href="${pageContext.request.contextPath}/admin/logout">Logout</a>
			</div></li>
	</ul>
</nav>
<div id="layoutSidenav">
	<div id="layoutSidenav_nav">
		<nav class="sb-sidenav accordion sb-sidenav-dark"
			id="sidenavAccordion">
			<div class="sb-sidenav-menu">
				<div class="nav">
					<div class="sb-sidenav-menu-heading"></div>
					<a class="nav-link" href="${pageContext.request.contextPath}/admin">
						Trang chủ </a>
					<div class="sb-sidenav-menu-heading">Quản lý</div>
					<a class="nav-link collapsed" href="#" data-toggle="collapse"
						data-target="#productLayouts" aria-expanded="false"
						aria-controls="productLayouts"> Sản phẩm
						<div class="sb-sidenav-collapse-arrow">
							<i class="fas fa-angle-down"></i>
						</div>
					</a>
					<div class="collapse" id="productLayouts"
						aria-labelledby="headingOne" data-parent="#sidenavAccordion">
						<nav class="sb-sidenav-menu-nested nav">
							<a class="nav-link"
								href="${pageContext.request.contextPath}/admin/products">Sản
								phẩm</a> <a class="nav-link"
								href="${pageContext.request.contextPath}/admin/categories">Danh
								mục sản phẩm</a> <a class="nav-link"
								href="${pageContext.request.contextPath}/admin/review_products">Đánh
								giá</a>
								<a class="nav-link"
								href="${pageContext.request.contextPath}/admin/hot">Sản phẩm đã bán</a>
						</nav>
					</div>
					<a class="nav-link"
						href="${pageContext.request.contextPath}/admin/orders">Đơn
						hàng</a> <a class="nav-link" href="${pageContext.request.contextPath}/admin/posts">Tin tức/Chính sách</a>

					<div class="sb-sidenav-menu-heading">Tài khoản</div>
					<a class="nav-link"
						href="${pageContext.request.contextPath}/admin/admins-account">Người
						quản trị</a> <a class="nav-link"
						href="${pageContext.request.contextPath}/admin/users-account">Người
						dùng</a>


				</div>
			</div>
			<div class="sb-sidenav-footer">
				<div class="small">Logged in as:</div>
				<%=session.getAttribute("username")%>
			</div>
		</nav>
	</div>