<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!-- sử dụng taglibs của spring để bind-data từ end-point trả về. -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!-- tích hợp JSTL vào trong JSP -->
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
<title>Đăng nhập - Hải sản Việt Hưng</title>
<link href="${pageContext.request.contextPath}/wp-admin/css/styles.css"
	rel="stylesheet" />
<%@ include file="/WEB-INF/views/admin/includes/all.jsp"%>
</head>
<body class="bg-primary">
	<div id="layoutAuthentication">
		<div id="layoutAuthentication_content">
			<main>
				<div class="container">
					<div class="row justify-content-center">
						<div class="col-lg-5">
							<div class="card shadow-lg border-0 rounded-lg mt-5">
								<div class="card-header">
									<h3 class="text-center font-weight-light my-4">Đăng nhập</h3>
								</div>
								<div class="card-body">
									<form:form modelAttribute="loginAdmin" action="/login"
										method="post">
										<div class="form-group">
											<label class="small mb-1" for="inputEmailAddress">Email</label>
											<input class="form-control py-4" id="inputEmailAddress"
												type="email" placeholder="Nhập vào email" name="email" />
										</div>
										<div class="form-group">
											<label class="small mb-1" for="inputPassword">Mật
												khẩu</label> <input class="form-control py-4" id="inputPassword"
												type="password" placeholder="Nhập vào mật khẩu"
												name="password" />
										</div>
										<c:choose>
											<c:when test="${status=='wrong' }">
												<p style="color: red; font-size: 15px;">Sai tài khoản
													hoặc mật khẩu</p>
											</c:when>
										</c:choose>
										<div class="form-group">
											<div class="custom-control custom-checkbox">
												<input class="custom-control-input"
													id="rememberPasswordCheck" type="checkbox" /> <label
													class="custom-control-label" for="rememberPasswordCheck">Nhớ
													mật khẩu</label>
											</div>
										</div>
										<div
											class="form-group d-flex align-items-center justify-content-between mt-4 mb-0">
											<a class="small" href="password.html">Quên mật khẩu?</a> <input
												type="submit" class="btn btn-primary" value="Đăng nhập" />

										</div>
									</form:form>
								</div>
								<div class="card-footer text-center">
									<div class="small">
										<a href="${pageContext.request.contextPath}/">Quay lại Hải
											sản Việt Hưng</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</main>
		</div>
		<div id="layoutAuthentication_footer">
			<%@ include file="/WEB-INF/views/admin/layout/footer.jsp"%></div>
	</div>
	<%@ include
		file="/WEB-INF/views/admin/includes/jquery-3.5.1.slim.min.jsp"%>
	<%@ include
		file="/WEB-INF/views/admin/includes/bootstrap.bundle.min.jsp"%>
	<script src="${pageContext.request.contextPath}/wp-admin/js/scripts.js"></script>
</body>
</html>
