<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
				<h1 class="mt-4">Tables</h1>
				<ol class="breadcrumb mb-4">
					<li class="breadcrumb-item"><a
						href="${pageContext.request.contextPath}/admin">Trang quản trị</a></li>
					<li class="breadcrumb-item active">Sản phẩm</li>
				</ol>
				<div class="card mb-4">
					<div class="card-body">
						DataTables is a third party plugin that is used to generate the
						demo table below. For more information about DataTables, please
						visit the <a target="_blank" href="https://datatables.net/">official
							DataTables documentation</a> .
					</div>
				</div>
				<div style="width: 100%;">
					<a href="/admin/products/add" style="color: white;">
						<button type="button" class="btn btn-primary btn-lg"
							style="float: right;">
							<i class="fa fa-plus"></i>Thêm
						</button>
					</a>
				</div>
				<div class="card mb-4" style="clear: both;">
					<div class="card-header">
						<i class="fas fa-table mr-1"></i> Bảng dữ liệu sản phẩm
					</div>
					<div class="card-body">
						<div class="table-responsive">
							<table class="table table-bordered" id="dataTable" width="100%"
								cellspacing="0">
								<thead>
									<tr>
										<th>Mã sản phẩm</th>
										<th>Tên sản phẩm</th>
										<th>Giá</th>
										<th>Số lượng</th>
										<th>Thuộc danh mục</th>
										<th>Ảnh</th>
										<th></th>
									</tr>
								</thead>
								<tfoot>
									<tr>
										<th>Mã sản phẩm</th>
										<th>Tên sản phẩm</th>
										<th>Giá</th>
										<th>Số lượng</th>
										<th>Thuộc danh mục</th>
										<th>Ảnh</th>
										<th></th>
									</tr>
								</tfoot>
								<fmt:setLocale value="vn" />
								<tbody>
									<c:forEach var="products" items="${products }">
										<tr>
											<td>${products.id }</td>
											<td>${products.nameProduct }</td>
											<td><fmt:formatNumber value="${products.price }"
													type="currency" />
											<td>${products.quantity }</td>
											<td>${products.category.nameCategory }</td>
											<td><c:choose>
													<c:when test="${products.imageProducts[1].URL!=null }">
														<img width="100" height="100"
															src="${pageContext.request.contextPath}/${products.imageProducts[1].URL }"
															class="lazy-load show-on-hover absolute fill hide-for-small back-image"
															alt="" />
													</c:when>
													<c:when
														test="${products.imageProducts[1].URL==null && products.imageProducts[0].URL!=null}">
														<img width="100" height="100"
															src="${pageContext.request.contextPath}/${products.imageProducts[0].URL }"
															class="lazy-load show-on-hover absolute fill hide-for-small back-image"
															alt="" />
													</c:when>
													<c:otherwise>
														Không có ảnh
													</c:otherwise>
												</c:choose></td>
											<td><a
												href="${pageContext.request.contextPath}/admin/products/${products.id }"
												style="color: white;"><button
														class="btn btn-success btn-sm rounded-0" type="button"
														data-toggle="tooltip" data-placement="top" title="">
														<i class="fa fa-edit"></i>Sửa
													</button> </a> <a href="/admin/products/delete/${products.id }"
												onclick="return confirm('Bạn có muốn xóa sản phẩm này?');">
													<button class="btn btn-danger btn-sm rounded-0"
														type="button" data-toggle="tooltip" data-placement="top"
														title="">
														<i class="fa fa-trash"></i>Xóa
													</button>
											</a></td>
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
