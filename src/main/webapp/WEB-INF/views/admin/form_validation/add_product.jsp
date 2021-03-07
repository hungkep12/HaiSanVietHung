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
						href="${pageContext.request.contextPath}/admin/products"
						class="breadcrumb-link">Sản phẩm</a></li>
					<li class="breadcrumb-item active" aria-current="page">Thêm
						sản phẩm</li>
				</ol>
				<div class="row">
					<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
						<div class="card mb-4" style="clear: both;">
							<h5 class="card-header">Thêm sản phẩm</h5>
							<div class="card-body">
								<form:form modelAttribute="product" id="validationform"
									data-parsley-validate="" novalidate="" method="POST"
									action="/admin/products/add_product"
									enctype="multipart/form-data">

									<div class="form-group row">
										<label class="col-12 col-sm-3 col-form-label text-sm-right">Tên
											sản phẩm </label>
										<div class="col-12 col-sm-8 col-lg-6">
											<input name="nameProduct" type="text" required=""
												placeholder="" class="form-control">
										</div>
									</div>
									<div class="form-group row">
										<label class="col-12 col-sm-3 col-form-label text-sm-right">Giá
										</label>
										<div class="col-12 col-sm-8 col-lg-6">
											<input name="price" type="number" required="" placeholder=""
												class="form-control" step="1000" min="0" />
										</div>
									</div>
									<div class="form-group row">
										<label class="col-12 col-sm-3 col-form-label text-sm-right">Thể
											loại</label>
										<div class="col-12 col-sm-8 col-lg-6">
											<form:select class="form-control" path="category.id">
												<form:options items="${categories}" itemValue="id"
													itemLabel="nameCategory" />
											</form:select>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-12 col-sm-3 col-form-label text-sm-right">Số
											lượng </label>
										<div class="col-12 col-sm-8 col-lg-6">
											<input name="quantity" type="number" required=""
												placeholder="" class="form-control" />
										</div>
									</div>

									<div class="form-group row">
										<label class="col-12 col-sm-3 col-form-label text-sm-right">Mô
											tả</label>
										<div class="col-12 col-sm-8 col-lg-6">
											<textarea name="description" id="description" required=""
												class="form-control"></textarea>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-12 col-sm-3 col-form-label text-sm-right">Chi
											tiết</label>
										<div class="col-12 col-sm-8 col-lg-6">
											<textarea name="detail" id="detail" required=""
												class="form-control"></textarea>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-12 col-sm-3 col-form-label text-sm-right"></label>
										<div class="col-12 col-sm-8 col-lg-6">
											<input type="hidden" name="countFile" id="countFile">
										</div>
									</div>

									<div class="form-group row">
										<label class="col-12 col-sm-3 col-form-label text-sm-right">Ảnh</label>
										<div class="col-12 col-sm-8 col-lg-6">
											<input type="file" value="" placeholder=""
												class="form-control" name="productImg" multiple>
										</div>
									</div>
									<div class="form-group row text-right">
										<div class="col col-sm-10 col-lg-9 offset-sm-1 offset-lg-0">
											<input type="submit" class="btn btn-space btn-primary"
												value="Lưu" /> <a
												href="${pageContext.request.contextPath}/admin/products"><input
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
	<script>
		var editor = "";
		var editor2 = "";
		$(document).ready(function() {
			editor = CKEDITOR.replace('description');
			editor2 = CKEDITOR.replace('detail');
		});
	</script>
	<script>
		$(document).ready(function() {
			$('input[type=file]').change(function() {
				$fileCount = this.files.length;
				$("#countFile").val($fileCount);
			})
		});
	</script>
</body>
</html>