<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<script type='text/javascript'
	src='${pageContext.request.contextPath}/wp-includes/js/jquery/jquery.js'></script>
<script type='text/javascript'
	src='${pageContext.request.contextPath}/wp-includes/js/jquery/jquery-migrate.min.js'></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/wp-admin/ckeditor/ckeditor.js">
	
</script>


<%@ include file="/WEB-INF/views/admin/layout/include_header.jsp"%>
</head>
<body class="sb-nav-fixed">
	<%@ include file="/WEB-INF/views/admin/layout/header_and_nav.jsp"%>
	<div id="layoutSidenav_content">
		<main>
			<div class="container-fluid">

				<h2 class="mt-4">Form validations</h2>
				<ol class="breadcrumb mb-4">
					<li class="breadcrumb-item"><a
						href="${pageContext.request.contextPath}/admin"
						class="breadcrumb-link">Trang quản trị</a></li>
					<li class="breadcrumb-item"><a
						href="${pageContext.request.contextPath}/admin/orders"
						class="breadcrumb-link">Đơn hàng</a></li>
					<li class="breadcrumb-item active" aria-current="page">Sửa
						trạng thái đơn hàng</li>
				</ol>
				<div class="row">
					<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
						<div class="card mb-4" style="clear: both;">
							<h5 class="card-header">Sửa trạng thái đơn hàng</h5>
							<div class="card-body">
								<input type="hidden" value="${order.stt }" name="crStt">
								<form:form modelAttribute="order" id="validationform"
									data-parsley-validate="" novalidate="" method="POST"
									action="/admin/orders/edit_order" enctype="multipart/form-data">
									<form:hidden path="id" />
									<form:hidden path="stt"/>
									<div class="form-group row">
										<label class="col-12 col-sm-3 col-form-label text-sm-right">Trạng
											thái</label>
										<div class="col-12 col-sm-8 col-lg-6">
											<select class="form-control" name="newStt"
												style="width: 200px;">
												<option value="0">Đang xử lý</option>
												<option value="1">Đã gửi</option>
												<option value="2">Không nhận hàng</option>
											</select>
										</div>
									</div>
									<div class="form-group row text-right">
										<div class="col col-sm-10 col-lg-9 offset-sm-1 offset-lg-0">
											<input type="submit" class="btn btn-space btn-primary"
												value="Lưu" /> <a
												href="${pageContext.request.contextPath}/admin/orders"><input
												type="button" value="Hủy"
												class="btn btn-space btn-secondary"></input></a>
										</div>
									</div>

								</form:form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</main>
		<%@ include file="/WEB-INF/views/admin/layout/footer.jsp"%>
	</div>
	</div>
	</div>
	<%@ include file="/WEB-INF/views/admin/layout/include2.jsp"%>

</body>
</html>