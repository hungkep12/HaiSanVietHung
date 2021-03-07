<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
					<li class="breadcrumb-item active">Đánh giá</li>
				</ol>
				<div class="card mb-4">
					<div class="card-body">
						DataTables is a third party plugin that is used to generate the
						demo table below. For more information about DataTables, please
						visit the <a target="_blank" href="https://datatables.net/">official
							DataTables documentation</a> .
					</div>
				</div>
				<div class="card mb-4">
					<div class="card-header">
						<i class="fas fa-table mr-1"></i> Bảng dữ liệu đánh giá sản phẩm
					</div>
					<div class="card-body">
						<div class="table-responsive">
							<table class="table table-bordered" id="dataTable" width="100%"
								cellspacing="0">
								<thead>
									<tr>
										<th>Mã</th>
										<th>Tên sản phẩm</th>
										<th>Người bình luận</th>
										<th>Nội dung bình luận</th>
										<th>Đánh giá</th>
										<th></th>
									</tr>
								</thead>
								<tfoot>
									<tr>
										<th>Mã</th>
										<th>Tên sản phẩm</th>
										<th>Người bình luận</th>
										<th>Nội dung bình luận</th>
										<th>Đánh giá</th>
										<th></th>
									</tr>
								</tfoot>
								<tbody>
									<c:forEach var="comment" items="${comment }">
										<tr>
											<td>${comment.id }</td>
											<td>${comment.product.nameProduct }</td>
											<td>${comment.user.displayName }</td>
											<td>${comment.comment }</td>
											<td>${comment.rating }*</td>
											<td><a
												href="/admin/review_products/delete/${comment.id }"
												onclick="return confirm('Bạn có muốn xóa bình luận này?');">
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
