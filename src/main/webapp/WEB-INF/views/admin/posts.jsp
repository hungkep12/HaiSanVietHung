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
					<li class="breadcrumb-item active">Chính sách/Tin tức</li>
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
					<a href="${pageContext.request.contextPath}/admin/posts/add"
						style="color: white;">
						<button type="button" class="btn btn-primary btn-lg"
							style="float: right;">
							<i class="fa fa-plus"></i>Thêm
						</button>
					</a>
				</div>
				<div class="card mb-4" style="clear: both;">
					<div class="card-header">
						<i class="fas fa-table mr-1"></i> Bảng dữ liệu bài viết
					</div>

					<div class="card-body">
						<div class="table-responsive">
							<table class="table table-bordered" id="dataTable" width="100%"
								cellspacing="0">
								<thead>
									<tr>
										<th>Mã bài viết</th>
										<th>Tiêu đề</th>
										<th>Ngày viết</th>
										<th>Thể loại</th>
										<th></th>
									</tr>
								</thead>
								<tfoot>

									<tr>
										<th>Mã bài viết</th>
										<th>Tiêu đề</th>
										<th>Ngày viết</th>
										<th>Thể loại</th>
										<th></th>
									</tr>
								</tfoot>
								<tbody>
									<c:forEach var="posts" items="${posts }">
										<tr>
											<td>${posts.id }</td>
											<td>${posts.title }</td>
											<td><c:choose>
													<c:when test="${posts.date!=null }">													
														<fmt:parseDate value="${posts.date }" pattern="yyyy-MM-dd"
															var="date" />
														<fmt:formatDate value="${date}" pattern="dd-MM-yyyy" />
													</c:when>
													<c:when test="${posts.date==null }"></c:when>
												</c:choose></td>
											<td>${posts.type }</td>
											<td><a
												href="${pageContext.request.contextPath}/admin/posts/${posts.id }"
												style="color: white;"><button
														class="btn btn-success btn-sm rounded-0" type="button"
														data-toggle="tooltip" data-placement="top" title="">
														<i class="fa fa-edit"></i>Sửa
													</button> </a> <a href="/admin/posts/delete/${posts.id }"
												onclick="return confirm('Bạn có muốn xóa bài viết này?');">
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
