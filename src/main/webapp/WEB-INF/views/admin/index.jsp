<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />

<%@ include file="/WEB-INF/views/admin/layout/include_header.jsp"%>
</head>
<body class="sb-nav-fixed">


	<%@ include file="/WEB-INF/views/admin/layout/header_and_nav.jsp"%>
	<div id="layoutSidenav_content">
		<main>
			<div class="container-fluid">
				<h1 class="mt-4">Trang quản trị</h1>
				<ol class="breadcrumb mb-4">
					<li class="breadcrumb-item active">Quản lý</li>
				</ol>
				<div class="row">
					<div class="col-xl-3 col-md-6">
						<div class="card bg-primary text-white mb-4">
							<div class="card-body">Sản phẩm</div>
							<div
								class="card-footer d-flex align-items-center justify-content-between">
								<a class="small text-white stretched-link"
									href="${pageContext.request.contextPath}/admin/products">Xem
									chi tiết</a>
								<div class="small text-white">
									<i class="fas fa-angle-right"></i>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-3 col-md-6">
						<div class="card bg-secondary text-white mb-4">
							<div class="card-body">Đơn hàng</div>
							<div
								class="card-footer d-flex align-items-center justify-content-between">
								<a class="small text-white stretched-link"
									href="${pageContext.request.contextPath}/admin/orders">Xem
									chi tiết</a>
								<div class="small text-white">
									<i class="fas fa-angle-right"></i>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-3 col-md-6">
						<div class="card bg-info text-white mb-4">
							<div class="card-body">Người quản trị</div>
							<div
								class="card-footer d-flex align-items-center justify-content-between">
								<a class="small text-white stretched-link"
									href="${pageContext.request.contextPath}/admin/admins-account">Xem
									chi tiết</a>
								<div class="small text-white">
									<i class="fas fa-angle-right"></i>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-3 col-md-6">
						<div class="card bg-info text-white mb-4">
							<div class="card-body">Người dùng</div>
							<div
								class="card-footer d-flex align-items-center justify-content-between">
								<a class="small text-white stretched-link"
									href="${pageContext.request.contextPath}/admin/users-account">Xem
									chi tiêt</a>
								<div class="small text-white">
									<i class="fas fa-angle-right"></i>
								</div>
							</div>
						</div>
					</div>
				</div>

				<ol class="breadcrumb mb-4">
					<li class="breadcrumb-item active">Doanh thu</li>
				</ol>
				<div class="card mb-4" style="clear: both;">
					<div class="card-body">
						<div class="table-responsive">
							<table class="table table-bordered" id="dataTable" width="100%"
								cellspacing="0">
								<thead>
									<tr>
										<th>Tháng</th>
										<th>Doanh thu</th>
									</tr>
								</thead>
								<tfoot>
									<tr>
										<th>Tháng</th>
										<th>Doanh thu</th>
									</tr>
								</tfoot>
								<tbody>
									<c:forEach var="revenue" items="${revenue }">
										<tr>
											<td>${revenue.month }</td>
											<fmt:setLocale value="vn" />
											<td><fmt:formatNumber value="${revenue.total }"
													type="currency" /></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				
			</div>
		</main>
		<%@ include file="/WEB-INF/views/admin/layout/footer.jsp"%>
	</div>
	</div>
	<%@ include file="/WEB-INF/views/admin/layout/include2.jsp"%>
</body>
</html>
