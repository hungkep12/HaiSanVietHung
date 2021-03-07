<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!-- tích hợp JSTL vào trong JSP -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<a href="/gio-hang"
	class="header-cart-link off-canvas-toggle nav-top-link is-small"
	data-open="#cart-popup" data-class="off-canvas-cart" title="Giỏ hàng"
	data-pos="right"> <span class="header-cart-title"> <span
		class="cart-price"><span
			class="woocommerce-Price-amount amount"> <c:set var="s"
					value="0"></c:set> <c:forEach var="cart"
					items="${sessionScope.cart }">
					<c:set var="s" value="${cart.quantity*cart.products.price+s }"></c:set>
					<fmt:setLocale value="vn" />

				</c:forEach> <fmt:formatNumber value="${s }" type="currency" /></span></span>
</span> <span class="cart-icon image-icon"> <strong> <c:set
				var="s" value="0"></c:set> <c:forEach var="cart"
				items="${sessionScope.cart }">
				<c:set var="s" value="${cart.quantity+s }"></c:set>

			</c:forEach> <c:out value="${s }"></c:out>
	</strong>
</span>
</a>
<!-- Cart Sidebar Popup -->
<div id="cart-popup" class="mfp-hide widget_shopping_cart">
	<div class="cart-popup-inner inner-padding">
		<div class="cart-popup-title text-center">
			<h4 class="uppercase">Giỏ hàng</h4>
			<div class="is-divider"></div>
		</div>

		<%
			if (session.getAttribute("cart") == null) {
		%>
		<!--  -->
		<div class="widget_shopping_cart_content" style="opacity: 1;">

			<p class="woocommerce-mini-cart__empty-message">Chưa có sản phẩm
				trong giỏ hàng.</p>


		</div>

		<%
			} else {
		%>
		<!--  -->
		<div class="widget_shopping_cart_content">

			<ul class="woocommerce-mini-cart cart_list product_list_widget ">
				<c:set var="s" value="0"></c:set>
				<c:forEach var="cart" items="${sessionScope.cart }">
					<c:set var="s" value="${cart.quantity*cart.products.price+s  }"></c:set>
					<li class="woocommerce-mini-cart-item mini_cart_item"><a
						href="javascript:void(0);" class="remove"
						aria-label="Xóa sản phẩm này" data-id=${cart.products.id }>×</a> <a
						href="${pageContext.request.contextPath}/san-pham/${cart.products.nameProduct }">
							<img width="300" height="300"
							src="${pageContext.request.contextPath}/${cart.products.imageProducts[1].URL }"
							class="attachment-woocommerce_thumbnail size-woocommerce_thumbnail"
							alt="" sizes="(max-width: 300px) 100vw, 300px">${cart.products.nameProduct }
					</a> <span class="quantity">${cart.quantity } × <span
							class="woocommerce-Price-amount amount"><fmt:formatNumber
									value="${cart.products.price }" type="currency" /></span></span></li>
				</c:forEach>
			</ul>

			<p class="woocommerce-mini-cart__total total">
				<strong>Tạm tính:</strong> <span
					class="woocommerce-Price-amount amount"><fmt:formatNumber
						value="${s }" type="currency" /></span>
			</p>


			<p class="woocommerce-mini-cart__buttons buttons">
				<a href="/gio-hang" class="button wc-forward"
					style="background-color: #446084; color: #ffffff;">Xem giỏ hàng</a><a
					href="/thanh-toan" class="button checkout wc-forward">Thanh
					toán</a>
			</p>



		</div>
		<%
			}
		%>


		<div class="cart-sidebar-content relative"></div>
	</div>
</div>