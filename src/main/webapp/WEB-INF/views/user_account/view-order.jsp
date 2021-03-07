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



		<%@ include file="/WEB-INF/views/layout/header.jsp"%>


		<%@ include file="/WEB-INF/views/user_account/main.jsp"%>
		<div class="large-9 col">
			<div class="woocommerce">
				<div class="woocommerce-MyAccount-content">
					<div class="woocommerce-notices-wrapper"></div>
					<p>
						Đơn hàng #
						<mark class="order-number">${orderByid.id }</mark>
						đã được đặt lúc
						<mark class="order-date">
							<fmt:formatDate value="${orderByid.dateOrder }" type="date"
								pattern="dd-MM-yyyy" />
						</mark>
						và hiện tại là
						<mark class="order-status">
							<c:if test="${orderByid.stt==0 }">Đang xử lý</c:if>
							<c:if test="${orderByid.stt==1 }">Đã gửi</c:if>
							<c:if test="${orderByid.stt==2 }">Không nhận hàng</c:if>
						</mark>
						.
					</p>


					<section class="woocommerce-order-details">

						<h2 class="woocommerce-order-details__title">Chi tiết đơn
							hàng</h2>

						<table
							class="woocommerce-table woocommerce-table--order-details shop_table order_details">

							<thead>
								<tr>
									<th class="woocommerce-table__product-name product-name">Sản
										phẩm</th>
									<th class="woocommerce-table__product-table product-total">Tổng</th>
								</tr>
							</thead>

							<tbody>
								<fmt:setLocale value="vn" />
								<c:forEach var="itemByIdOrder" items="${itemByIdOrder }">
									<tr class="woocommerce-table__line-item order_item">

										<td class="woocommerce-table__product-name product-name">
											<a
											href="${pageContext.request.contextPath}/san-pham/${itemByIdOrder.products.nameProduct }">${itemByIdOrder.products.nameProduct }</a>
											<strong class="product-quantity">×&nbsp;${itemByIdOrder.quantity }</strong>
										</td>

										<td class="woocommerce-table__product-total product-total">
											<span class="woocommerce-Price-amount amount"><fmt:formatNumber
													value="${itemByIdOrder.quantity*itemByIdOrder.products.price}"
													type="currency" /></span>
										</td>

									</tr>
								</c:forEach>

							</tbody>

							<tfoot>

								<tr>
									<th scope="row">Phương thức thanh toán:</th>
									<td>Trả tiền mặt khi nhận hàng</td>
								</tr>
								<tr>
									<th scope="row">Tổng cộng:</th>
									<td><span class="woocommerce-Price-amount amount"><fmt:formatNumber
												value="${orderByid.total }" type="currency" /></span></td>
								</tr>
							</tfoot>
						</table>

					</section>

					<section class="woocommerce-customer-details">


						<h2 class="woocommerce-column__title">Địa chỉ thanh toán</h2>

						<address>
							${orderByid.fName } ${orderByid.lName }<br>${orderByid.address }
							<p class="woocommerce-customer-details--phone">${orderByid.phone }</p>

							<p class="woocommerce-customer-details--email">${orderByid.email }</p>
						</address>



					</section>
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

</body>
</html>
