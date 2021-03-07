<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!-- tích hợp JSTL vào trong JSP -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


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


		<%@ include file="/WEB-INF/views/user_account/main.jsp"%>
		<!-- NONE -->
		<c:if test="${countOrderOfUser==0 }">
			<div class="large-9 col">
				<div class="woocommerce">
					<div class="woocommerce-MyAccount-content">
						<div class="woocommerce-notices-wrapper"></div>
						<div
							class="woocommerce-message woocommerce-message--info woocommerce-Message woocommerce-Message--info woocommerce-info">
							<a class="woocommerce-Button button" href="./cua-hang.html">
								Browse products </a> Chưa có đơn hàng nào được tạo ra.
						</div>

					</div>
				</div>
			</div>
		</c:if>
		<!-- NONE -->
		<c:if test="${countOrderOfUser>0 }">
			<div class="large-9 col">
				<div class="woocommerce">
					<div class="woocommerce-MyAccount-content">
						<div class="woocommerce-notices-wrapper"></div>

						<div class="touch-scroll-table">
							<table
								class="woocommerce-orders-table woocommerce-MyAccount-orders shop_table shop_table_responsive my_account_orders account-orders-table">
								<thead>
									<tr>
										<th
											class="woocommerce-orders-table__header woocommerce-orders-table__header-order-number"><span
											class="nobr">Đơn hàng</span></th>
										<th
											class="woocommerce-orders-table__header woocommerce-orders-table__header-order-date"><span
											class="nobr">Ngày</span></th>
										<th
											class="woocommerce-orders-table__header woocommerce-orders-table__header-order-status"><span
											class="nobr">Tình trạng</span></th>
										<th
											class="woocommerce-orders-table__header woocommerce-orders-table__header-order-total"><span
											class="nobr">Tổng</span></th>
										<th
											class="woocommerce-orders-table__header woocommerce-orders-table__header-order-actions"><span
											class="nobr">Các thao tác</span></th>
									</tr>
								</thead>

								<tbody>
									<c:forEach var="orderOfUser" items="${orderOfUser }">
										<tr
											class="woocommerce-orders-table__row woocommerce-orders-table__row--status-processing order">
											<td
												class="woocommerce-orders-table__cell woocommerce-orders-table__cell-order-number"
												data-title="Đơn hàng"><a
												href="${pageContext.request.contextPath}/tai-khoan/view-order/${orderOfUser.id }">
													#${orderOfUser.id } </a></td>
											<td
												class="woocommerce-orders-table__cell woocommerce-orders-table__cell-order-date"
												data-title="Ngày"><time
													datetime="<fmt:formatDate
												value="${orderOfUser.dateOrder }" type="date"
												pattern="dd-MM-yyyy" />">
													<fmt:formatDate value="${orderOfUser.dateOrder }"
														type="date" pattern="dd-MM-yyyy" />
												</time></td>
											<td
												class="woocommerce-orders-table__cell woocommerce-orders-table__cell-order-status"
												data-title="Tình trạng"><c:if
													test="${orderOfUser.stt==0 }">
													<p class="text-warning"
														style="font-size: 17px; font-weight: 800;">Đang xử lý</p>
												</c:if> <c:if test="${orderOfUser.stt==1 }">
													<p class="text-success"
														style="font-size: 17px; font-weight: 800;">Đã gửi</p>
												</c:if> <c:if test="${orderOfUser.stt==2 }">
													<p class="text-danger"
														style="font-size: 17px; font-weight: 800;">Không nhận
														hàng</p>
												</c:if></td>
											<td
												class="woocommerce-orders-table__cell woocommerce-orders-table__cell-order-total"
												data-title="Tổng"><span
												class="woocommerce-Price-amount amount"><fmt:setLocale
														value="vn" /> <fmt:formatNumber
														value="${orderOfUser.total }" type="currency" /></span></td>
											<td
												class="woocommerce-orders-table__cell woocommerce-orders-table__cell-order-actions"
												data-title="Các thao tác"><a
												href="${pageContext.request.contextPath}/tai-khoan/view-order/${orderOfUser.id }"
												class="woocommerce-button button view"
												style="background-color: #446084; color: #ffffff;">Xem</a></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>




					</div>
				</div>
			</div>
		</c:if>
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

</body>
</html>
