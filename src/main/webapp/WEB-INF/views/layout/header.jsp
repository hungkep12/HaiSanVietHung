<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!-- tích hợp JSTL vào trong JSP -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<header id="header" class="header has-sticky sticky-jump">
	<div class="header-wrapper">
		<div id="top-bar"
			class="header-top hide-for-sticky nav-dark show-for-medium">
			<div class="flex-row container">
				<div class="flex-col hide-for-medium flex-left">
					<ul class="nav nav-left medium-nav-center nav-small  nav-">
					</ul>
				</div>
				<!-- flex-col left -->

				<div class="flex-col hide-for-medium flex-center">
					<ul class="nav nav-center nav-small  nav-">
					</ul>
				</div>
				<!-- center -->

				<div class="flex-col hide-for-medium flex-right">
					<ul class="nav top-bar-nav nav-right nav-small  nav-">
					</ul>
				</div>
				<!-- .flex-col right -->

				<div class="flex-col show-for-medium flex-grow">
					<ul class="nav nav-center nav-small mobile-nav  nav-">
						<li class="header-contact-wrapper">
							<ul id="header-contact"
								class="nav nav-divided nav-uppercase header-contact">
								<li class=""><a target="_blank" rel="noopener noreferrer"
									href="https://maps.google.com/?q=124 Phạm Văn Đồng"
									title="124 Phạm Văn Đồng" class="tooltip"> <i
										class="icon-map-pin-fill" style="font-size: 12px;"></i> <span>
											124 Phạm Văn Đồng </span>
								</a></li>


								<li class=""><a class="tooltip" title="7:00-20:00 "> <i
										class="icon-clock" style="font-size: 12px;"></i> <span>7:00-20:00</span>
								</a></li>

								<li class=""><a href="tel:0868.43.40.00" class="tooltip"
									title="0969.43.40.00"> <i class="icon-phone"
										style="font-size: 12px;"></i> <span>0868.43.40.00</span>
								</a></li>
							</ul>
						</li>
					</ul>
				</div>

			</div>
			<!-- .flex-row -->
		</div>
		<!-- #header-top -->
		<div id="masthead" class="header-main ">
			<div class="header-inner flex-row container logo-left"
				role="navigation">

				<!-- Logo -->
				<div id="logo" class="flex-col logo">
					<!-- Header logo -->
					<a href="/" title="Hải Sản Việt Hưng - Ship đến tận nhà" rel="home">
						<img width="86" height="90"
						src="${pageContext.request.contextPath}/wp-content/uploads/2019/12/logo-remove.png"
						class="header_logo header-logo" alt="Hải Sản Việt Hưng" /><img
						width="86" height="90"
						src="${pageContext.request.contextPath}/wp-content/uploads/2019/12/logo-remove.png"
						class="header-logo-dark" alt="Hải Sản Việt Hưng" />
					</a>
				</div>

				<!-- Mobile Left Elements -->
				<div class="flex-col show-for-medium flex-left">
					<ul class="mobile-nav nav nav-left ">
					</ul>
				</div>

				<!-- Left Elements -->
				<div class="flex-col hide-for-medium flex-left
									flex-grow">
					<ul class="header-nav header-nav-main nav nav-left  nav-uppercase">
						<li class="header-contact-wrapper">
							<ul id="header-contact"
								class="nav nav-divided nav-uppercase header-contact">
								<li class=""><a target="_blank" rel="noopener noreferrer"
									href="https://maps.google.com/?q=124 Phạm Văn Đồng"
									title="124 Phạm Văn Đồng" class="tooltip"> <i
										class="icon-map-pin-fill" style="font-size: 12px;"></i> <span>
											124 Phạm Văn Đồng </span>
								</a></li>


								<li class=""><a class="tooltip" title="7:00-20:00 "> <i
										class="icon-clock" style="font-size: 12px;"></i> <span>7:00-20:00</span>
								</a></li>

								<li class=""><a href="tel:0868.43.40.00" class="tooltip"
									title="0868.43.40.00"> <i class="icon-phone"
										style="font-size: 12px;"></i> <span>0868.434.000</span>
								</a></li>
							</ul>
						</li>
						<li class="header-search-form search-form html relative has-icon">
							<div class="header-search-form-wrapper">
								<div class="searchform-wrapper ux-search-box relative is-normal">
									<form role="search" method="get" class="searchform"
										action="${pageContext.request.contextPath}/search"
										autocomplete="off">
										<div class="flex-row relative">
											<div class="flex-col flex-grow">
												<label class="screen-reader-text"
													for="woocommerce-product-search-field-0">Tìm kiếm:</label>
												<input type="search" id="woocommerce-product-search-field-0"
													class="search-field mb-0" value="" name="nameProduct"
													placeholder="Tìm kiếm sản phẩm&hellip;" /> <input
													type="hidden" name="post_type" value="product" />
											</div>
											<!-- .flex-col -->
											<div class="flex-col">
												<button type="submit" value="Tìm kiếm"
													class="ux-search-submit submit-button secondary button icon mb-0">
													<i class="icon-search"></i>
												</button>
											</div>
											<!-- .flex-col -->
										</div>
										<!-- .flex-row -->
										<div class="live-search-results text-left z-top"
											id="resultLivingSearch"></div>
									</form>
								</div>
							</div>
						</li>
					</ul>
				</div>

				<!-- Right Elements -->
				<div class="flex-col hide-for-medium flex-right">
					<ul class="header-nav header-nav-main nav nav-right  nav-uppercase">
						<%
							if (session.getAttribute("emailUser") == null) {
						%>
						<li class="account-item has-icon
												">
							<div class="header-button">
								<a href="/tai-khoan"
									class="nav-top-link nav-top-not-logged-in icon primary button circle is-small">
									<span> Đăng nhập </span>

								</a>
								<!-- .account-login-link -->

							</div>

						</li>
						<%
							} else {
						%>
						<li class="account-item has-icon    active   has-dropdown">
							<div class="header-button">
								<a href="/tai-khoan"
									class="account-link account-login
  icon primary button circle is-small"
									title="Tài khoản"> <span class="header-account-title">
										Tài khoản </span> <i class="icon-user"></i>
								</a>
								<!-- .account-link -->


							</div>
							<ul class="nav-dropdown  nav-dropdown-default" style="">

								<li
									class="woocommerce-MyAccount-navigation-link woocommerce-MyAccount-navigation-link--dashboard is-active active">
									<a href="${pageContext.request.contextPath}/tai-khoan">Bảng
										điều khiển</a> <!-- empty -->
								</li>
								<li
									class="woocommerce-MyAccount-navigation-link woocommerce-MyAccount-navigation-link--orders">
									<a
									href="${pageContext.request.contextPath}/tai-khoan/don-hang/">Đơn
										hàng</a>
								</li>

								<li
									class="woocommerce-MyAccount-navigation-link woocommerce-MyAccount-navigation-link--edit-address">
									<a
									href="${pageContext.request.contextPath}/tai-khoan/edit-address/<%=session.getAttribute("displayNameUser")%>">Địa
										chỉ</a>
								</li>
								<li
									class="woocommerce-MyAccount-navigation-link woocommerce-MyAccount-navigation-link--edit-account">
									<a
									href="${pageContext.request.contextPath}/tai-khoan/edit-account/<%=session.getAttribute("displayNameUser")%>">Thông
										tin tài khoản</a>
								</li>
								<li
									class="woocommerce-MyAccount-navigation-link woocommerce-MyAccount-navigation-link--customer-logout">
									<a
									href="${pageContext.request.contextPath}/tai-khoan/customer-logout/">Đăng
										xuất</a>
								</li>
							</ul>

						</li>
						<%
							}
						%>
						<li class="header-divider"></li>
						<li class="cart-item has-icon"><a href="/gio-hang"
							class="header-cart-link off-canvas-toggle nav-top-link is-small"
							data-open="#cart-popup" data-class="off-canvas-cart"
							title="Giỏ hàng" data-pos="right"> <span
								class="header-cart-title"> <span class="cart-price"><span
										class="woocommerce-Price-amount amount"> <c:set var="s"
												value="0"></c:set> <c:forEach var="cart"
												items="${sessionScope.cart }">
												<c:set var="s"
													value="${cart.quantity*cart.products.price+s }"></c:set>
												<fmt:setLocale value="vn" />

											</c:forEach> <fmt:formatNumber value="${s }" type="currency" /></span></span>
							</span> <span class="cart-icon image-icon"> <strong> <c:set
											var="s" value="0"></c:set> <c:forEach var="cart"
											items="${sessionScope.cart }">
											<c:set var="s" value="${cart.quantity+s }"></c:set>

										</c:forEach> <c:out value="${s }"></c:out>
								</strong>
							</span>
						</a> <!-- Cart Sidebar Popup -->
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

										<p class="woocommerce-mini-cart__empty-message">Chưa có
											sản phẩm trong giỏ hàng.</p>


									</div>

									<%
										} else {
									%>
									<!--  -->
									<div class="widget_shopping_cart_content">

										<ul
											class="woocommerce-mini-cart cart_list product_list_widget ">
											<c:set var="s" value="0"></c:set>
											<c:forEach var="cart" items="${sessionScope.cart }">
												<c:set var="s"
													value="${cart.quantity*cart.products.price+s  }"></c:set>
												<li class="woocommerce-mini-cart-item mini_cart_item"><a
													href="javascript:void(0);"
													class="remove"
													aria-label="Xóa sản phẩm này" data-id=${cart.products.id }>×</a>
													<a
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
												style="background-color: #446084; color: #ffffff;">Xem
												giỏ hàng</a><a href="/thanh-toan"
												class="button checkout wc-forward">Thanh toán</a>
										</p>



									</div>
									<%
										}
									%>


									<div class="cart-sidebar-content relative"></div>
								</div>
							</div></li>
					</ul>
				</div>

				<!-- Mobile Right Elements -->
				<div class="flex-col show-for-medium flex-right">
					<ul class="mobile-nav nav nav-right ">
						<li class="header-search-form search-form html relative has-icon">
							<div class="header-search-form-wrapper">
								<div class="searchform-wrapper ux-search-box relative is-normal">
									<form role="search" method="get" class="searchform"
										action="https://haisantruongsa.vn/">
										<div class="flex-row relative">
											<div class="flex-col flex-grow">
												<label class="screen-reader-text"
													for="woocommerce-product-search-field-1">Tìm kiếm:</label>
												<input type="search" id="woocommerce-product-search-field-1"
													class="search-field mb-0" placeholder="Tìm kiếm&hellip;"
													value="" name="s" /> <input type="hidden" name="post_type"
													value="product" />
											</div>
											<!-- .flex-col -->
											<div class="flex-col">
												<button type="submit" value="Tìm kiếm"
													class="ux-search-submit submit-button secondary button icon mb-0">
													<i class="icon-search"></i>
												</button>
											</div>
											<!-- .flex-col -->
										</div>
										<!-- .flex-row -->
										<div class="live-search-results text-left z-top"></div>
									</form>
								</div>
							</div>
						</li>
						<li class="cart-item has-icon"><a href="/gio-hang"
							class="header-cart-link off-canvas-toggle nav-top-link is-small"
							data-open="#cart-popup" data-class="off-canvas-cart"
							title="Giỏ hàng" data-pos="right"> <span
								class="cart-icon image-icon"> <c:set var="cartSize"
										value="${fn:length(cart) }"></c:set> <strong>${cartSize }</strong>

							</span>
						</a></li>
						<li class="nav-icon has-icon">
							<div class="header-button">
								<a href="#" data-open="#main-menu" data-pos="right"
									data-bg="main-menu-overlay" data-color=""
									class="icon primary button round is-small" aria-label="Menu"
									aria-controls="main-menu" aria-expanded="false"> <i
									class="icon-menu"></i>
								</a>
							</div>
						</li>
					</ul>
				</div>

			</div>
			<!-- .header-inner -->

			<!-- Header divider -->
			<div class="container">
				<div class="top-divider full-width"></div>
			</div>
		</div>
		<!-- .header-main -->
		<div id="wide-nav"
			class="header-bottom wide-nav nav-dark flex-has-center hide-for-medium">
			<div class="flex-row container">

				<div class="flex-col hide-for-medium flex-left">
					<ul
						class="nav header-nav header-bottom-nav nav-left  nav-spacing-large nav-uppercase">
						<div id="mega-menu-wrap" class="ot-vm-hover">
							<div id="mega-menu-title">
								<i class="icon-menu"></i> Danh mục sản phẩm
							</div>
							<ul id="mega_menu" class="sf-menu sf-vertical">
								<c:forEach var="category" items="${category }">
									<li id="menu-item-${category.id }"
										class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-384"><a
										href="/danh-muc/${category.nameCategory }"
										class="menu-image-title-after menu-image-not-hovered"><img
											width="25" height="25"
											src="${pageContext.request.contextPath}/${category.image }"
											class="menu-image menu-image-title-after" alt="" /><span
											class="menu-image-title-after menu-image-title">${category.nameCategory }</span></a></li>
								</c:forEach>

							</ul>
						</div>
					</ul>
				</div>
				<!-- flex-col -->

				<div class="flex-col hide-for-medium flex-center">
					<ul
						class="nav header-nav header-bottom-nav nav-center  nav-spacing-large nav-uppercase">
						<li id="menu-item-50"
							class="menu-item menu-item-type-post_type menu-item-object-page menu-item-home current-menu-item page_item page-item-41 current_page_item active  menu-item-50"><a
							href="/" class="nav-top-link"><i
								class="_mi _before dashicons dashicons-admin-home"
								aria-hidden="true"></i><span>Trang chủ</span></a></li>
						<li id="menu-item-57"
							class="menu-item menu-item-type-custom menu-item-object-custom  menu-item-57"><a
							href="/gioi-thieu-ve-hai-san-viet-hung" class="nav-top-link"><i
								class="_mi _before dashicons dashicons-welcome-write-blog"
								aria-hidden="true"></i><span>Giới thiệu</span></a></li>
						<li id="menu-item-53"
							class="menu-item menu-item-type-post_type menu-item-object-page  menu-item-53"><a
							href="/san-pham" class="nav-top-link"><i
								class="_mi _before dashicons dashicons-admin-multisite"
								aria-hidden="true"></i><span>Cửa hàng</span></a></li>
						<li id="menu-item-177"
							class="httpshaisantruongsavncategorytin-tuc menu-item menu-item-type-taxonomy menu-item-object-category  menu-item-177"><a
							href="/tin-tuc" class="nav-top-link"><i
								class="_mi _before dashicons dashicons-format-aside"
								aria-hidden="true"></i><span>Tin tức</span></a></li>
						<li id="menu-item-180"
							class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children  menu-item-180 has-dropdown"><a
							href="#" class="nav-top-link"><i
								class="_mi _before dashicons dashicons-carrot"
								aria-hidden="true"></i><span>Chính sách</span><i
								class="icon-angle-down"></i></a>
							<ul class='nav-dropdown nav-dropdown-default'>
								<c:forEach var="policies" items="${ policies}">
									<li id="menu-item-${ policies.id}"
										class="menu-item menu-item-type-post_type menu-item-object-page  menu-item-${ policies.id}"><a
										href="/chinh-sach/${ policies.title}">${ policies.title}</a></li>
								</c:forEach>

							</ul></li>
						<li id="menu-item-56"
							class="menu-item menu-item-type-custom menu-item-object-custom  menu-item-56"><a
							href="tel:0962626211" class="nav-top-link"><i
								class="_mi _before dashicons dashicons-admin-users"
								aria-hidden="true"></i><span>Liên hệ</span></a></li>
					</ul>
				</div>
				<!-- flex-col -->

				<div class="flex-col hide-for-medium flex-right flex-grow">
					<ul
						class="nav header-nav header-bottom-nav nav-right  nav-spacing-large nav-uppercase">
					</ul>
				</div>
				<!-- flex-col -->


			</div>
			<!-- .flex-row -->
		</div>
		<!-- .header-bottom -->

		<div class="header-bg-container fill">
			<div class="header-bg-image fill"></div>
			<div class="header-bg-color fill"></div>
		</div>
		<!-- .header-bg-container -->
	</div>
	<!-- header-wrapper-->
</header>