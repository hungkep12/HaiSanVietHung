<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page import="com.haisanviethung.services.UserServices"%>



<!DOCTYPE html>
<!--[if IE 9 ]> <html lang="vi-VN" class="ie9 loading-site no-js"> <![endif]-->
<!--[if IE 8 ]> <html lang="vi-VN" class="ie8 loading-site no-js"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="vi-VN" class="loading-site no-js">
<!--<![endif]-->
<head>
<title>Tài khoản | Hải Sản Việt Hưng</title>

<link rel='stylesheet' id='select2-css'
	href='${pageContext.request.contextPath}/wp-content/plugins/woocommerce/assets/css/select2.css?ver=3.8.1'
	type='text/css' media='all' />

<%@ include file="/WEB-INF/views/layout/include-in-head.jsp"%>
</head>

<body data-rsssl=1
	class="page-template page-template-page-my-account page-template-page-my-account-php page page-id-13 logged-in theme-flatsome ot-vertical-menu ot-submenu-top woocommerce-account woocommerce-page woocommerce-no-js lightbox nav-dropdown-has-arrow">


	<a class="skip-link screen-reader-text" href="#main">Skip to
		content</a>

	<div id="wrapper">


		<title>Hải Sản Việt Hưng- Ship đến tận nhà</title>
		<%@ include file="/WEB-INF/views/layout/header.jsp"%>

		<c:choose>
			<c:when test="${status=='success' }">
				<div
					class="message-container container alert-color medium-text-center">
					<span class="message-icon icon-close"></span> Sửa thành công
				</div>
			</c:when>
			<c:when test="${status=='fail' }">
				<div
					class="message-container container alert-color medium-text-center">
					<span class="message-icon icon-close"></span> Sửa thất bại
				</div>
			</c:when>
			<c:when test="${status=='wrong' }">
				<div
					class="message-container container alert-color medium-text-center">
					<span class="message-icon icon-close"></span> Sai mật khẩu
				</div>
			</c:when>
		</c:choose>
		<%@ include file="/WEB-INF/views/user_account/main.jsp"%>

		<div class="large-9 col">
			<div class="woocommerce">
				<div class="woocommerce-MyAccount-content">
					<div class="woocommerce-notices-wrapper"></div>
					<form:form class="woocommerce-EditAccountForm edit-account"
						action="/tai-khoan/edit-account" modelAttribute="accountUser"
						method="post">


						<p
							class="woocommerce-form-row woocommerce-form-row--first form-row form-row-first">
							<label for="account_first_name">Tên&nbsp;<span
								class="required">*</span></label> <input type="text"
								class="woocommerce-Input woocommerce-Input--text input-text"
								name="lName" id="lName"
								<%if (session.getAttribute("lName") != null) {%>
								value='<%=session.getAttribute("lName")%>' <%} else {%> value=''
								<%}%> required="required" />
						</p>

						<p
							class="woocommerce-form-row woocommerce-form-row--last form-row form-row-last">
							<label for="account_last_name">Họ&nbsp;<span
								class="required">*</span></label> <input type="text"
								class="woocommerce-Input woocommerce-Input--text input-text"
								name="fName" id="fName"
								<%if (session.getAttribute("fName") != null) {%>
								value='<%=session.getAttribute("fName")%>' <%} else {%> value=''
								<%}%> required="required" />
						</p>
						<p style="color: red; font-size: 15px;" id="checklName"></p>
						<p style="color: red; font-size: 15px;" id="checkfName"></p>
						<div class="clear"></div>

						<p
							class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
							<label for="account_display_name">Tên hiển thị&nbsp;<span
								class="required">*</span></label> <input type="text"
								class="woocommerce-Input woocommerce-Input--text input-text"
								name="displayName" id="displayName"
								value='<%=session.getAttribute("displayNameUser")%>'
								required="required" /> <span><em>Đây sẽ là cách mà
									tên của bạn sẽ được hiển thị trong phần tài khoản và trong phần
									đánh giá</em></span>
						</p>
						<p style="color: red; font-size: 15px;" id="checkDisplayName"></p>
						<div class="clear"></div>

						<p
							class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
							<label for="account_email">Địa chỉ email&nbsp;<span
								class="required">*</span></label> <input type="email"
								class="woocommerce-Input woocommerce-Input--email input-text"
								name="email" id="email" autocomplete="email"
								value='<%=session.getAttribute("emailUser")%>'
								required="required" />
						</p>
						<p style="color: red; font-size: 15px;" id="checkEmail"></p>

						<fieldset>
							<legend>Thay đổi mật khẩu</legend>

							<p
								class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
								<label for="password_current">Mật khẩu hiện tại (bỏ
									trống nếu không đổi)</label> <input type="password"
									class="woocommerce-Input woocommerce-Input--password input-text"
									name="password" id="password_current" autocomplete="off" />
							</p>
							<p
								class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
								<label for="password_1">Mật khẩu mới (bỏ trống nếu không
									đổi)</label> <input type="password"
									class="woocommerce-Input woocommerce-Input--password input-text"
									name="newPassword" id="password" autocomplete="off" value="" />
							</p>
							<p
								class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
								<label for="password_2">Xác nhận mật khẩu mới</label> <input
									type="password"
									class="woocommerce-Input woocommerce-Input--password input-text"
									id="password1" autocomplete="off" />
							</p>
							<p style="color: red; font-size: 15px;" id="CheckPasswordMatch"></p>
						</fieldset>
						<div class="clear"></div>


						<p>

							<button type="submit" class="woocommerce-Button"
								style="background-color: #446084; color: #ffffff;"
								name="save_account_details" value="Lưu thay đổi" id="save">Lưu
								thay đổi</button>

						</p>



					</form:form>

				</div>
			</div>
		</div>
	</div>
	<!-- .row .vertical-tabs -->



	</div>
	<!-- .container -->
	</div>
	<!-- .page-wrapper.my-account  -->




	</main>
	<!-- #main -->

	<%@ include file="/WEB-INF/views/layout/footer-and-more.jsp"%>

	<%@include file="/WEB-INF/views/layout/include2.jsp"%>


	<script type='text/javascript'
		src='${pageContext.request.contextPath}/wp-content/plugins/woocommerce/assets/js/selectWoo/selectWoo.full.min.js?ver=1.0.6'></script>

	<script type="text/javascript">
		jQuery(function($) {
			//fname
			$("#fName").keyup(function() {
				var fName = $(this).val();
				if (fName == "") {
					$("#checkfName").html("Họ không được trống");
					document.getElementById("save").disabled = true;
				} else if (fName != "") {
					$("#checkfName").html("");
					document.getElementById("save").disabled = false;
				}
			})
			//lname
			$("#lName").keyup(function() {
				var lName = $(this).val();
				if (lName == "") {
					$("#checklName").html("Tên không được trống");
					document.getElementById("save").disabled = true;
				} else if (lName != "") {
					$("#checklName").html("");
					document.getElementById("save").disabled = false;
				}
			})
			//display name
			$("#displayName").keyup(
					function() {
						var displayName = $(this).val();
						if (displayName == "") {
							$("#checkDisplayName").html(
									"Tên hiển thị không được trống");
							document.getElementById("save").disabled = true;
						} else if (displayName != "") {
							$("#checkDisplayName").html("");
							document.getElementById("save").disabled = false;
						}
					})

			//email
			$("#email").keyup(function() {
				var email = $(this).val();
				if (email == "") {
					$("#checkEmail").html("Email không được trống");
					document.getElementById("save").disabled = true;
				} else if (email != "") {
					$("#checkEmail").html("");
					document.getElementById("save").disabled = false;
				}
			})
			//new password
			$("#password")
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

			$("#password1")
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

			$("#password_current").keyup(function() {
				var password1 = $(this).val();
				var passwordCurrent = $("#password_current").val();

				if (passwordCurrent == "") {
					$("#CheckPasswordMatch").html("");
				}
			})
		});
	</script>

	<script type="text/javascript">
		jQuery(function($) {
			function checkPasswordMatch() {
				var passwordCurrent = $("#password_current").val();
				var password = $("#password").val();
				var confirmPassword = $("#password1").val();
				if (passwordCurrent != '') {
					if (password != confirmPassword) {
						if (confirmPassword != '')
							$("#CheckPasswordMatch").html(
									"Mật khẩu không khớp!");
						document.getElementById("save").disabled = true;
					}

					else {
						if (confirmPassword != '')
							$("#CheckPasswordMatch").html("");
						document.getElementById("save").disabled = false;
					}
				}

			}
			$(document).ready(function() {
				$("#password1").keyup(checkPasswordMatch);
				$("#password").keyup(checkPasswordMatch);
			});
		});
	</script>
</body>
</html>
