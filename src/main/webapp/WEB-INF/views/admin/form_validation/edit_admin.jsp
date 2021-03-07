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
						href="${pageContext.request.contextPath}/admin/admins-account"
						class="breadcrumb-link">Người quản trị</a></li>
					<li class="breadcrumb-item active" aria-current="page">Sửa
						người quản trị</li>
				</ol>
				<div class="row">
					<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
						<c:choose>
							<c:when test="${stt=='wrong' }">
								<p style="color: red; font-size: 15px;">Sai mật khẩu</p>
							</c:when>
							<c:when test="${stt=='success' }">
								<p style="color: red; font-size: 15px;">Đổi thành công</p>
							</c:when>
							<c:when test="${stt=='fail' }">
								<p style="color: red; font-size: 15px;">Đổi thất bại</p>
							</c:when>
						</c:choose>
						<div class="card mb-4" style="clear: both;">
							<h5 class="card-header">Sửa người quản trị</h5>
							<div class="card-body">
								<form:form modelAttribute="admin" id="validationform"
									data-parsley-validate="" novalidate="" method="POST"
									action="/admin/admins-account/edit_admin"
									enctype="multipart/form-data">
									<form:hidden path="id" />
									<div class="form-group row">
										<label class="col-12 col-sm-3 col-form-label text-sm-right">Email</label>
										<div class="col-12 col-sm-8 col-lg-6">
											<form:input path="email" type="email" required=""
												placeholder="" class="form-control" />
										</div>
									</div>
									<div class="form-group row">
										<label class="col-12 col-sm-3 col-form-label text-sm-right">Tên
											hiển thị </label>
										<div class="col-12 col-sm-8 col-lg-6">
											<form:input path="username" type="text" required=""
												placeholder="" class="form-control" />
										</div>
									</div>
									<div class="form-group row">
										<label class="col-12 col-sm-3 col-form-label text-sm-right">Mật
											khẩu cũ(Không nhập nếu không đổi) </label>
										<div class="col-12 col-sm-8 col-lg-6">
											<input name="password" type="password" placeholder=""
												class="form-control" id="password_current" />
										</div>
									</div>
									<div class="form-group row">
										<label class="col-12 col-sm-3 col-form-label text-sm-right">Mật
											khẩu mới(Không nhập nếu không đổi)</label>
										<div class="col-12 col-sm-8 col-lg-6">
											<input name="newPassword" type="password" placeholder=""
												class="form-control" id="pass" />
										</div>
									</div>
									<div class="form-group row">
										<label class="col-12 col-sm-3 col-form-label text-sm-right">Nhập
											lại mật khẩu mới </label>
										<div class="col-12 col-sm-8 col-lg-6">
											<input type="password" placeholder="" class="form-control"
												id="pass1" />
										</div>
									</div>
									<p style="color: red; font-size: 15px;" id="CheckPasswordMatch"></p>
									<div class="form-group row text-right">
										<div class="col col-sm-10 col-lg-9 offset-sm-1 offset-lg-0">
											<input type="submit" class="btn btn-space btn-primary"
												value="Lưu" id="save" /> <a
												href="${pageContext.request.contextPath}/admin/admins-account"><input
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
	<script type="text/javascript">
		jQuery(function($) {
			function checkPasswordMatch() {
				var password = $("#pass").val();
				var confirmPassword = $("#pass1").val();
				if (password != confirmPassword) {
					if (confirmPassword != '')
						$("#CheckPasswordMatch").html("Mật khẩu không khớp!");
					document.getElementById("save").disabled = true;
				}

				else {
					if (confirmPassword != '')
						$("#CheckPasswordMatch").html("Mật khẩu khớp");
					document.getElementById("save").disabled = false;
				}

			}

			$(document).ready(function() {
				$("#pass1").keyup(checkPasswordMatch);
				$("#pass").keyup(checkPasswordMatch);
			});
		});
	</script>

	<script type="text/javascript">
		jQuery(function($) {
			$("#password_current").keyup(function() {
				var passwordCurrent = $(this).val();
				if (passwordCurrent != "") {
					document.getElementById("pass").disabled = false;
					document.getElementById("pass1").disabled = false;
				} else {
					document.getElementById("pass").disabled = true;
					document.getElementById("pass1").disabled = true;
				}
			})

			$("#pass")
					.keyup(
							function() {
								var password = $(this).val();
								var passwordCurrent = $("#password_current")
										.val();
								if (passwordCurrent != "") {
									if (password == "") {
										$("#CheckPasswordMatch")
												.html(
														"Khi bạn đã nhập mật khẩu hiện tại. Vui lòng không được để trống mật khẩu mới");
										document.getElementById("save").disabled = true;
									} else if (password != "") {
										$("#CheckPasswordMatch").html("");
										document.getElementById("save").disabled = false;
									}
								}

							})

			$("#pass1")
					.keyup(
							function() {
								var password1 = $(this).val();
								var passwordCurrent = $("#password_current")
										.val();
								if (passwordCurrent != "") {
									if (password1 == "") {
										$("#CheckPasswordMatch")
												.html(
														"Khi bạn đã nhập mật khẩu hiện tại. Vui lòng không được để trống mật khẩu mới");
										document.getElementById("save").disabled = true;
									} else if (password1 != "") {
										$("#CheckPasswordMatch").html("");
										document.getElementById("save").disabled = false;
									}
								}
							})
		});
	</script>
</body>
</html>