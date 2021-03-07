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

<title>
	<%
		if (request.getParameter("nameProduct") != null) {
	%> Tìm kiếm &ldquo;<%=request.getParameter("nameProduct")%>&ldquo; <%
 	} else {
 %> &ldquo; <%
 	}
 %>| Hải Sản Việt Hưng
</title>
<%@ include file="/WEB-INF/views/layout/include-in-head.jsp"%>

</head>

<body data-rsssl=1
	class="archive search search-results post-type-archive post-type-archive-product theme-flatsome ot-vertical-menu ot-submenu-top woocommerce woocommerce-page woocommerce-no-js lightbox nav-dropdown-has-arrow">


	<a class="skip-link screen-reader-text" href="#main">Skip to
		content</a>

	<div id="wrapper">


		<%@ include file="/WEB-INF/views/layout/header.jsp"%>

		<div class="shop-page-title category-page-title page-title ">

			<div class="page-title-inner flex-row  medium-flex-wrap container">
				<div class="flex-col flex-grow medium-text-center">
					<div class="is-small">
						<nav class="woocommerce-breadcrumb breadcrumbs uppercase">
							<a href="/">Trang chủ</a> <span class="divider">&#47;</span> <a
								href="/san-pham">Cửa hàng</a> <span class="divider">&#47;</span>
							<%
								if (request.getParameter("nameProduct") != null) {
							%>
							Kết quả tìm kiếm cho &ldquo;<%=request.getParameter("nameProduct")%>&ldquo;
							<%
								} else {
							%>
							&ldquo;
							<%
								}
							%>


						</nav>
					</div>
					<div class="category-filtering category-filter-row show-for-medium">
						<a href="#" data-open="#shop-sidebar" data-visible-after="true"
							data-pos="left" class="filter-button uppercase plain"> <i
							class="icon-menu"></i> <strong>Lọc</strong>
						</a>
						<div class="inline-block"></div>
					</div>
				</div>
				<!-- .flex-left -->

				<div class="flex-col medium-text-center">

					<p class="woocommerce-result-count hide-for-medium">Hiển thị
						${countProduct } kết quả</p>

				</div>
				<!-- .flex-right -->

			</div>
			<!-- flex-row -->
		</div>
		<!-- .page-title -->

		<main id="main" class="">
			<div class="row category-page-row">

				<div class="col large-3 hide-for-medium ">
					<div id="shop-sidebar" class="sidebar-inner col-inner">
						<aside id="custom_html-4"
							class="widget_text widget widget_custom_html">
							<div class="textwidget custom-html-widget">
								<aside id="text-7" class="widget widget_text">
									<div class="textwidget">
										<p>
											<img class="size-full wp-image-1684 aligncenter"
												src="${pageContext.request.contextPath}/wp-content/uploads/2020/03/banner-1.jpg"
												alt="" width="500" height="800">
										</p>
									</div>
								</aside>
							</div>
						</aside>
						<aside id="woocommerce_price_filter-2"
							class="widget woocommerce widget_price_filter">
							<span class="widget-title shop-sidebar">Lọc theo giá</span>
							<div class="is-divider small"></div>
							<form method="get"
								action="${pageContext.request.contextPath}/search">
								<div class="price_slider_wrapper">
									<div class="price_slider" style="display: none;"></div>
									<div class="price_slider_amount" data-step="10">
										<input type="text" id="min_price" name="min_price"
											value="70000" data-min="70000" placeholder="Giá thấp nhất" />
										<input type="text" id="max_price" name="max_price"
											value="2000000" data-max="2000000" placeholder="Giá cao nhất" />
										<button type="submit" class="button">Lọc</button>
										<div class="price_label" style="display: none;">
											Giá <span class="from"></span> &mdash; <span class="to"></span>
										</div>
										<input type="hidden" name="nameProduct"
											value='<%=request.getParameter("nameProduct")%>' /><input
											type="hidden" name="post_type" value="product" />
										<div class="clear"></div>
									</div>
								</div>
							</form>

						</aside>
					</div>
					<!-- .sidebar-inner -->
				</div>
				<!-- #shop-sidebar -->

				<div class="col large-9">
					<div class="shop-container">

						<div class="woocommerce-notices-wrapper"></div>
						<div
							class="products row row-small large-columns-4 medium-columns-3 small-columns-3">
							<%
								String nameSearch = (String) (request.getParameter("nameProduct"));
							%>
							<c:forEach var="productSearched" items="${productSearched }">
								<div
									class="product-small col has-hover product type-product post-${productSearched.id } status-publish first instock has-post-thumbnail shipping-taxable purchasable product-type-simple">
									<div class="col-inner">

										<div class="badge-container absolute left top z-1"></div>
										<div class="product-small box ">
											<div class="box-image">
												<div class="image-fade_in_back">
													<a
														href="${pageContext.request.contextPath}/san-pham/${productSearched.nameProduct }">
														<img width="300" height="300"
														src="${pageContext.request.contextPath}/${productSearched.imageProducts[1].URL }"
														class="lazy-load attachment-woocommerce_thumbnail size-woocommerce_thumbnail"
														alt="" srcset="" sizes="(max-width: 300px) 100vw, 300px" /><img
														width="300" height="300"
														src="${pageContext.request.contextPath}/${productSearched.imageProducts[1].URL }"
														class="lazy-load show-on-hover absolute fill hide-for-small back-image"
														alt="" srcset="" sizes="(max-width: 300px) 100vw, 300px" />
													</a>
												</div>
												<div class="image-tools is-small top right show-on-hover">
												</div>
												<div
													class="image-tools is-small hide-for-small bottom left show-on-hover">
												</div>
												<c:set var="i" value="${productSearched.id }"></c:set>
												<c:if test="${productSearched.quantity>0 }">
													<c:set var="isEnough" value="${-1 }"></c:set>
													<%
														if (session.getAttribute("cart") == null) {
													%>
													<div
														class="image-tools grid-tools text-center hide-for-small bottom hover-slide-in show-on-hover">

														<a href="javascript:void(0);" data-id="${i }"
															class="add-to-cart-grid no-padding is-transparent product_type_simple add_to_cart_button"
															aria-label="Thêm &ldquo;${productSearched.nameProduct }&rdquo; vào giỏ hàng"
															rel="nofollow"><div
																class="cart-icon tooltip is-small" title="Mua hàng">
																<strong>+</strong>
															</div></a>
													</div>
													<c:set var="isEnough" value="${1 }"></c:set>
													<%
														} else {
													%>
													<c:set var="cid" value="${-1 }"></c:set>
													<c:forEach var="cart" items="${sessionScope.cart }"
														varStatus="count">
														<c:if test="${cart.products.id==productSearched.id }">
															<c:set var="cid" value="${cart.products.id }"></c:set>
															<c:set var="ccount" value="${count.index }"></c:set>
														</c:if>
													</c:forEach>
													<c:choose>
														<c:when test="${cid==-1 }">
															<div
																class="image-tools grid-tools text-center hide-for-small bottom hover-slide-in show-on-hover">

																<a href="javascript:void(0);" data-id="${i }"
																	class="add-to-cart-grid no-padding is-transparent product_type_simple add_to_cart_button"
																	aria-label="Thêm &ldquo;${productSearched.nameProduct }&rdquo; vào giỏ hàng"
																	rel="nofollow"><div
																		class="cart-icon tooltip is-small" title="Mua hàng">
																		<strong>+</strong>
																	</div></a>
															</div>
															<c:set var="isEnough" value="${1 }"></c:set>
														</c:when>
														<c:when test="${cid==productSearched.id }">
															<c:if
																test="${productSearched.quantity>sessionScope.cart[ccount].quantity+1 }">
																<div
																	class="image-tools grid-tools text-center hide-for-small bottom hover-slide-in show-on-hover">

																	<a href="javascript:void(0);" data-id="${i }"
																		class="add-to-cart-grid no-padding is-transparent product_type_simple add_to_cart_button"
																		aria-label="Thêm &ldquo;${productSearched.nameProduct }&rdquo; vào giỏ hàng"
																		rel="nofollow"><div
																			class="cart-icon tooltip is-small" title="Mua hàng">
																			<strong>+</strong>
																		</div></a>
																</div>
																<c:set var="isEnough" value="${1 }"></c:set>
															</c:if>
														</c:when>
													</c:choose>
													<%
														}
													%>

												</c:if>

												<c:if test="${isEnough==-1 || productSearched.quantity<=0 }">
													<div class="out-of-stock-label">Hết hàng</div>
												</c:if>
											</div>
											<!-- box-image -->

											<div class="box-text box-text-products">
												<div class="title-wrapper">
													<p
														class="category uppercase is-smaller no-text-overflow product-cat">
														${productSearched.category.nameCategory }</p>
													<p class="name product-title">
														<a
															href="${pageContext.request.contextPath}/san-pham/${productSearched.nameProduct }">${productSearched.nameProduct }</a>
													</p>
												</div>
												<div class="price-wrapper">
													<span class="price"><span
														class="woocommerce-Price-amount amount">${productSearched.price }&nbsp;<span
															class="woocommerce-Price-currencySymbol">&#8363;</span></span></span>
												</div>
											</div>
											<!-- box-text -->
										</div>
										<!-- box -->
									</div>
									<!-- .col-inner -->
								</div>
							</c:forEach>
							<!-- col -->






						</div>
						<!-- row -->
					</div>
					<!-- shop container -->
					<hr />


				</div>
		</main>
		<!-- #main -->

		<%@ include file="/WEB-INF/views/layout/footer-and-more.jsp"%>

		<%@include file="/WEB-INF/views/layout/include2.jsp"%>


		<script type='text/javascript'
			src='${pageContext.request.contextPath}/wp-includes/js/jquery/ui/core.min.js?ver=1.11.4'></script>
		<script type='text/javascript'
			src='${pageContext.request.contextPath}/wp-includes/js/jquery/ui/widget.min.js?ver=1.11.4'></script>
		<script type='text/javascript'
			src='${pageContext.request.contextPath}/wp-includes/js/jquery/ui/mouse.min.js?ver=1.11.4'></script>
		<script type='text/javascript'
			src='${pageContext.request.contextPath}/wp-includes/js/jquery/ui/slider.min.js?ver=1.11.4'></script>
		<script type='text/javascript'
			src='${pageContext.request.contextPath}/wp-content/plugins/woocommerce/assets/js/jquery-ui-touch-punch/jquery-ui-touch-punch.min.js?ver=3.8.1'></script>
		<script type='text/javascript'
			src='${pageContext.request.contextPath}/wp-content/plugins/woocommerce/assets/js/accounting/accounting.min.js?ver=0.4.2'></script>
		<script type='text/javascript'>
			/* <![CDATA[ */
			var woocommerce_price_slider_params = {
				"currency_format_num_decimals" : "0",
				"currency_format_symbol" : "\u20ab",
				"currency_format_decimal_sep" : ".",
				"currency_format_thousand_sep" : ",",
				"currency_format" : "%v\u00a0%s"
			};
			/* ]]> */
		</script>
		<script type='text/javascript'
			src='${pageContext.request.contextPath}/wp-content/plugins/woocommerce/assets/js/frontend/price-slider.min.js?ver=3.8.1'></script>
		<script type='text/javascript'>
			/* <![CDATA[ */
			var _zxcvbnSettings = {
				"src" : "https:\/\/haisantruongsa.vn\/wp-includes\/js\/zxcvbn.min.js"
			};
			/* ]]> */
		</script>
		<script type='text/javascript'
			src='${pageContext.request.contextPath}/wp-includes/js/zxcvbn-async.min.js?ver=1.0'></script>
		<script type='text/javascript'>
			/* <![CDATA[ */
			var pwsL10n = {
				"unknown" : "M\u1eadt kh\u1ea9u m\u1ea1nh kh\u00f4ng x\u00e1c \u0111\u1ecbnh",
				"short" : "R\u1ea5t y\u1ebfu",
				"bad" : "Y\u1ebfu",
				"good" : "Trung b\u00ecnh",
				"strong" : "M\u1ea1nh",
				"mismatch" : "M\u1eadt kh\u1ea9u kh\u00f4ng kh\u1edbp"
			};
			/* ]]> */
		</script>
		<script type='text/javascript'
			src='${pageContext.request.contextPath}/wp-admin/js/password-strength-meter.min.js?ver=5.3.6'></script>
		<script type='text/javascript'>
			/* <![CDATA[ */
			var wc_password_strength_meter_params = {
				"min_password_strength" : "3",
				"stop_checkout" : "",
				"i18n_password_error" : "Vui l\u00f2ng nh\u1eadp m\u1eadt kh\u1ea9u kh\u00f3 h\u01a1n.",
				"i18n_password_hint" : "G\u1ee3i \u00fd: M\u1eadt kh\u1ea9u ph\u1ea3i c\u00f3 \u00edt nh\u1ea5t 12 k\u00fd t\u1ef1. \u0110\u1ec3 n\u00e2ng cao \u0111\u1ed9 b\u1ea3o m\u1eadt, s\u1eed d\u1ee5ng ch\u1eef in hoa, in th\u01b0\u1eddng, ch\u1eef s\u1ed1 v\u00e0 c\u00e1c k\u00fd t\u1ef1 \u0111\u1eb7c bi\u1ec7t nh\u01b0 ! \" ? $ % ^ & )."
			};
			/* ]]> */
		</script>
		<script type='text/javascript'
			src='${pageContext.request.contextPath}/wp-content/plugins/woocommerce/assets/js/frontend/password-strength-meter.min.js?ver=3.8.1'></script>
</body>
</html>
