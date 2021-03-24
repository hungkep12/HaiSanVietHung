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
<meta charset="UTF-8" />
<title>${nameCategory }|&nbsp;Hải&nbsp;Sản&nbsp;Việt&nbsp;Hưng</title>
<%@ include file="/WEB-INF/views/layout/include-in-head.jsp"%>
</head>

<body data-rsssl=1
	class="archive tax-product_cat term-ngao-so-oc term-45 logged-in theme-flatsome ot-vertical-menu ot-submenu-top woocommerce woocommerce-page woocommerce-no-js lightbox nav-dropdown-has-arrow">


	<a class="skip-link screen-reader-text" href="#main">Skip to
		content</a>

	<div id="wrapper">


		<%@ include file="/WEB-INF/views/layout/header.jsp"%>

		<div class="shop-page-title category-page-title page-title ">

			<div class="page-title-inner flex-row  medium-flex-wrap container">
				<div class="flex-col flex-grow medium-text-center">
					<div class="is-small">
						<nav class="woocommerce-breadcrumb breadcrumbs uppercase">
							<a href="/">Trang chủ</a> <span class="divider">&#47;</span>
							${nameCategory }

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
								action="${pageContext.request.contextPath}/danh-muc/${productByCategory[0].category.nameCategory}">
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
								if ((int) (request.getAttribute("countProduct")) == 0) {
							%>
							<div class="shop-container">

								<p class="woocommerce-info">Không tìm thấy sản phẩm nào khớp
									với lựa chọn của bạn.</p>

							</div>
							<%
								} else {
							%>
							<c:forEach var="productByCategory" items="${productByCategory }">
								<div
									class="product-small col has-hover product type-product post-436 status-publish instock product_cat-${productByCategory.category.id } has-post-thumbnail shipping-taxable purchasable product-type-simple">
									<div class="col-inner">

										<div class="badge-container absolute left top z-1"></div>
										<div class="product-small box ">
											<div class="box-image">
												<div class="image-fade_in_back">
													<a href="/san-pham/${productByCategory.nameProduct }">
														<img width="300" height="300"
														src="${pageContext.request.contextPath}/${productByCategory.imageProducts[1].URL }"
														class="attachment-woocommerce_thumbnail size-woocommerce_thumbnail lazy-load-active"
														alt="" sizes="(max-width: 300px) 100vw, 300px"><img
														width="300" height="300"
														src="${pageContext.request.contextPath}/${productByCategory.imageProducts[1].URL }"
														class="show-on-hover absolute fill hide-for-small back-image lazy-load-active"
														alt="" sizes="(max-width: 300px) 100vw, 300px">
													</a>
												</div>
												<div class="image-tools is-small top right show-on-hover">
												</div>
												<div
													class="image-tools is-small hide-for-small bottom left show-on-hover">
												</div>
												<c:if test="${productByCategory.quantity>0 }">
													<c:set var="isEnough" value="${-1 }"></c:set>
													<%
														if (session.getAttribute("cart") == null) {
													%>
													<div
														class="image-tools grid-tools text-center hide-for-small bottom hover-slide-in show-on-hover">
														<a href="javascript:void(0);" data-quantity="1"
															data-id="${productByCategory.id }"
															class="add-to-cart-grid no-padding is-transparent"
															aria-label="Thêm “${productByCategory.nameProduct }” vào giỏ hàng"
															rel="nofollow"><div
																class="cart-icon tooltip is-small tooltipstered">
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
														<c:if test="${cart.products.id==productByCategory.id }">
															<c:set var="cid" value="${cart.products.id }"></c:set>
															<c:set var="ccount" value="${count.index }"></c:set>
														</c:if>
													</c:forEach>
													<c:choose>
														<c:when test="${cid==-1 }">
															<div
																class="image-tools grid-tools text-center hide-for-small bottom hover-slide-in show-on-hover">
																<a href="javascript:void(0);"
																	data-id="${productByCategory.id }" data-quantity="1"
																	class="add-to-cart-grid no-padding is-transparent"
																	aria-label="Thêm “${productByCategory.nameProduct }” vào giỏ hàng"
																	rel="nofollow"><div
																		class="cart-icon tooltip is-small tooltipstered">
																		<strong>+</strong>
																	</div></a>
															</div>
															<c:set var="isEnough" value="${1 }"></c:set>
														</c:when>
														<c:when test="${cid==productByCategory.id }">
															<c:if
																test="${productByCategory.quantity>=sessionScope.cart[ccount].quantity+1 }">
																<div
																	class="image-tools grid-tools text-center hide-for-small bottom hover-slide-in show-on-hover">
																	<a href="javascript:void(0);" data-quantity="1"
																		data-id="${productByCategory.id }"
																		class="add-to-cart-grid no-padding is-transparent"
																		aria-label="Thêm “${productByCategory.nameProduct }” vào giỏ hàng"
																		rel="nofollow"><div
																			class="cart-icon tooltip is-small tooltipstered">
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

												<c:if
													test="${productByCategory.quantity==0 || isEnough==-1 }">
													<div class="out-of-stock-label">Hết hàng</div>
												</c:if>
											</div>
											<!-- box-image -->

											<div class="box-text box-text-products">
												<div class="title-wrapper">
													<p
														class="category uppercase is-smaller no-text-overflow product-cat op-7">
														${productByCategory.category.nameCategory }</p>
													<p class="name product-title">
														<a href="/san-pham/${productByCategory.nameProduct }">${productByCategory.nameProduct }</a>
													</p>
												</div>
												<div class="price-wrapper">
													<span class="price"><span
														class="woocommerce-Price-amount amount">${productByCategory.price }</span></span>
												</div>
											</div>
											<!-- box-text -->
										</div>
										<!-- box -->
									</div>
									<!-- .col-inner -->
								</div>
							</c:forEach>
							<%
								}
							%>

						</div>
						<!-- row -->
					</div>
					<!-- shop container -->
				</div>
			</div>

		</main>
		<!-- #main -->

		<%@ include file="/WEB-INF/views/layout/footer-and-more.jsp"%>

		<%@include file="/WEB-INF/views/layout/include2.jsp"%>

		<script type='text/javascript'
			src='${pageContext.request.contextPath}/wp-includes/js/jquery/ui/core.min.js'></script>
		<script type='text/javascript'
			src='${pageContext.request.contextPath}/wp-includes/js/jquery/ui/widget.min.js'></script>
		<script type='text/javascript'
			src='${pageContext.request.contextPath}/wp-includes/js/jquery/ui/mouse.min.js'></script>
		<script type='text/javascript'
			src='${pageContext.request.contextPath}/wp-includes/js/jquery/ui/slider.min.js'></script>
		<script type='text/javascript'
			src='${pageContext.request.contextPath}/wp-content/plugins/woocommerce/assets/js/jquery-ui-touch-punch/jquery-ui-touch-punch.min.js'></script>
		<script type='text/javascript'
			src='${pageContext.request.contextPath}/wp-content/plugins/woocommerce/assets/js/accounting/accounting.min.js'></script>
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
			src='${pageContext.request.contextPath}/wp-content/plugins/woocommerce/assets/js/frontend/price-slider.min.js'></script>
</body>
</html>
