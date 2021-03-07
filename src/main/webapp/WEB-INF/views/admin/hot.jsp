<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
				<h1 class="mt-4">Tables</h1>
				<ol class="breadcrumb mb-4">
					<li class="breadcrumb-item"><a
						href="${pageContext.request.contextPath}/admin">Trang quản trị</a></li>
					<li class="breadcrumb-item active">Sản phẩm bán chạy</li>
				</ol>
				<div class="card mb-4">
					<div class="card-body">
						DataTables is a third party plugin that is used to generate the
						demo table below. For more information about DataTables, please
						visit the <a target="_blank" href="https://datatables.net/">official
							DataTables documentation</a> .
					</div>
				</div>
				<div class="card mb-4" style="clear: both;">
					<div class="card-header">
						<i class="fas fa-table mr-1"></i> Bảng dữ liệu sản phẩm bán chạy
					</div>
					<div class="card-body">
						<div class="table-responsive">
							<table class="table table-bordered" id="dataTable" width="100%"
								cellspacing="0">
								<thead>
									<tr>
										<th>Số lượng đã bán</th>
										<th>Mã sản phẩm</th>
										<th>Tên sản phẩm</th>
										<th>Giá</th>
										<th>Số lượng còn lại</th>
										</tr>
								</thead>
								<tfoot>
									<tr>
										<th>Số lượng đã bán</th>
										<th>Mã sản phẩm</th>
										<th>Tên sản phẩm</th>
										<th>Giá</th>
										<th>Số lượng còn lại</th>
									</tr>
								</tfoot>
								<fmt:setLocale value="vn" />
								<tbody>
									<c:forEach var="mostProduct" items="${mostProduct }">
										<tr>
											<td>${mostProduct.totalSell }</td>
											<td>${mostProduct.id }</td>
											<td>${mostProduct.nameProduct }</td>
											<td><fmt:formatNumber value="${mostProduct.price }"
													type="currency" />
											<td>${mostProduct.quantity }</td>


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
	<%@ include file="/WEB-INF/views/admin/layout/include2.jsp"%></div>
</body>
</html>
