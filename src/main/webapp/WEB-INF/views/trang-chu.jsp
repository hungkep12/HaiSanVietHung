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
<title>Hải Sản Việt Hưng- Ship đến tận nhà</title>
<%@ include file="/WEB-INF/views/layout/include-in-head.jsp"%>

</head>

<body data-rsssl=1
	class="home page-template page-template-page-blank page-template-page-blank-php page page-id-41 theme-flatsome ot-vertical-menu ot-submenu-top woocommerce-no-js lightbox nav-dropdown-has-arrow">


	<a class="skip-link screen-reader-text" href="#main">Skip to
		content</a>

	<div id="wrapper">

		<%@ include file="/WEB-INF/views/layout/header.jsp"%>

		<main id="main" class="">

			<div id="content" role="main" class="content-area">

				<section class="section" id="section_578896382">
					<div class="bg section-bg fill bg-fill  bg-loaded"></div>
					<!-- .section-bg -->

					<div class="section-content relative">

						<div class="row row-small" id="row-469438045">
							<div class="col col_main_slider medium-8 small-12 large-8">
								<div class="col-inner">
									<div class="img has-hover x md-x lg-x y md-y lg-y"
										id="image_1833689438">
										<div class="img-inner dark" style="margin: 20px 0px 0px 0px;">
											<img width="1020" height="590"
												src="${pageContext.request.contextPath}/wp-content/uploads/2020/04/hai-san-truong-sa1-1384x800.jpg"
												class="lazy-load attachment-large size-large" alt=""
												sizes="(max-width: 1020px) 100vw, 1020px" />
										</div>

										<style scope="scope">
#image_1833689438 {
	width: 100%;
}
</style>
									</div>

								</div>
							</div>
							<div class="col medium-4 small-12 large-4">
								<div class="col-inner">
									<div class="video video-fit mb" style="padding-top: 56.25%;">
										<p>
											<iframe title="Giới thiệu cơ sở 1 Hải sản Trường Sa"
												width="1020" height="574"
												src="https://www.youtube.com/embed/KLZKkJSdpGM?feature=oembed"
												frameborder="0"
												allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
												allowfullscreen></iframe>
										</p>
									</div>
									<div class="video video-fit mb" style="padding-top: 56.25%;">
										<p>
											<iframe title="Giới thiệu cơ sở 2 Hải sản Trường Sa"
												width="1020" height="574"
												src="https://www.youtube.com/embed/WLMZ59daQWQ?feature=oembed"
												frameborder="0"
												allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
												allowfullscreen></iframe>
										</p>
									</div>
								</div>
							</div>

							<style scope="scope">
</style>
						</div>
					</div>
					<!-- .section-content -->


					<style scope="scope">
#section_578896382 {
	padding-top: 0px;
	padding-bottom: 0px;
}
</style>
				</section>

				<section class="section" id="section_820828403">
					<div class="bg section-bg fill bg-fill  bg-loaded"></div>
					<!-- .section-bg -->

					<div class="section-content relative">

						<div class="row" id="row-732020004">
							<div class="col small-12 large-12">
								<div class="col-inner">
									<h3 class="title-sp-ban-chay">SẢN PHẨM BÁN CHẠY</h3>


									<div
										class="row large-columns-5 medium-columns-3 small-columns-2 row-xsmall has-shadow row-box-shadow-1 slider row-slider slider-nav-circle slider-nav-push"
										data-flickity-options='{"imagesLoaded": true, "groupCells": "100%", "dragThreshold" : 5, "cellAlign": "left","wrapAround": true,"prevNextButtons": true,"percentPosition": true,"pageDots": false, "rightToLeft": false, "autoPlay" : false}'>

										<!--  -->
										<c:forEach var="mostProduct" items="${mostProduct}">
											<div class="col">
												<div class="col-inner">

													<div class="badge-container absolute left top z-1"></div>
													<div
														class="product-small box has-hover box-normal box-text-bottom">
														<div class="box-image" style="border-radius: 3%;">
															<div class="">
																<a href="/san-pham/${mostProduct.nameProduct }"> <img
																	width="300" height="300"
																	src="${pageContext.request.contextPath}/${mostProduct.imageProducts[1].URL }"
																	class="lazy-load show-on-hover absolute fill hide-for-small back-image"
																	alt="" /><img width="300" height="300"
																	src="${pageContext.request.contextPath}/${mostProduct.imageProducts[1].URL }"
																	class="lazy-load attachment-woocommerce_thumbnail size-woocommerce_thumbnail"
																	alt="" />
																</a>
															</div>
															<div class="image-tools top right show-on-hover"></div>
															<c:if test="${mostProduct.quantity>0 }">
																<c:set var="isEnough" value="${-1 }"></c:set>
																<%
																	if (session.getAttribute("cart") == null) {
																%>
																<div
																	class="image-tools grid-tools text-center hide-for-small bottom hover-slide-in show-on-hover">
																	<a href="javascript:void(0);" data-quantity="1"
																		data-id="${mostProduct.id }"
																		class="add-to-cart-grid no-padding is-transparent product_type_simple add_to_cart_button"
																		aria-label="Thêm &ldquo;${mostProduct.nameProduct }&rdquo; vào giỏ hàng"
																		rel="nofollow">
																		<div class="cart-icon tooltip is-small"
																			title="Mua hàng">
																			<strong>+</strong>
																		</div>
																	</a>
																</div>
																<c:set var="isEnough" value="${1 }"></c:set>
																<%
																	} else {
																%>
																<c:set var="cid" value="${-1 }"></c:set>
																<c:forEach var="cart" items="${sessionScope.cart }"
																	varStatus="count">
																	<c:if test="${cart.products.id==mostProduct.id }">
																		<c:set var="cid" value="${cart.products.id }"></c:set>
																		<c:set var="ccount" value="${count.index }"></c:set>
																	</c:if>
																</c:forEach>
																<c:choose>
																	<c:when test="${cid==-1 }">
																		<div
																			class="image-tools grid-tools text-center hide-for-small bottom hover-slide-in show-on-hover">
																			<a href="javascript:void(0);" data-quantity="1"
																				data-id="${mostProduct.id }"
																				class="add-to-cart-grid no-padding is-transparent product_type_simple add_to_cart_button"
																				aria-label="Thêm &ldquo;${mostProduct.nameProduct }&rdquo; vào giỏ hàng"
																				rel="nofollow">
																				<div class="cart-icon tooltip is-small"
																					title="Mua hàng">
																					<strong>+</strong>
																				</div>
																			</a>
																		</div>
																		<c:set var="isEnough" value="${1 }"></c:set>
																	</c:when>
																	<c:when test="${cid==mostProduct.id }">
																		<c:if
																			test="${mostProduct.quantity>sessionScope.cart[ccount].quantity+1 }">
																			<div
																				class="image-tools grid-tools text-center hide-for-small bottom hover-slide-in show-on-hover">

																				<a href="javascript:void(0);" data-quantity="1"
																					data-id="${mostProduct.id }"
																					class="add-to-cart-grid no-padding is-transparent product_type_simple add_to_cart_button"
																					aria-label="Thêm &ldquo;${mostProduct.nameProduct }&rdquo; vào giỏ hàng"
																					rel="nofollow">
																					<div class="cart-icon tooltip is-small"
																						title="Mua hàng">
																						<strong>+</strong>
																					</div>
																				</a>
																			</div>
																			<c:set var="isEnough" value="${1 }"></c:set>
																		</c:if>
																	</c:when>
																</c:choose>
																<%
																	}
																%>
															</c:if>

															<c:if test="${isEnough==-1 || mostProduct.quantity<=0 }">
																<div class="out-of-stock-label">Hết hàng</div>
															</c:if>

														</div>
														<!-- box-image -->

														<div class="box-text text-center">
															<div class="title-wrapper">
																<p
																	class="category uppercase is-smaller no-text-overflow product-cat op-7">
																	${mostProduct.category.nameCategory }</p>
																<p class="name product-title">
																	<a href="/san-pham/${mostProduct.nameProduct }">${mostProduct.nameProduct }</a>
																</p>
															</div>
															<div class="price-wrapper">
																<span class="price"><span
																	class="woocommerce-Price-amount amount"><fmt:setLocale
																			value="vn" /> <fmt:formatNumber
																			value="${mostProduct.price }" type="currency" />&nbsp;</span></span>
															</div>
														</div>
														<!-- box-text -->
													</div>
													<!-- box -->
												</div>
												<!-- .col-inner -->
											</div>
										</c:forEach>
										<!--  -->


										<!-- col -->


									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- .section-content -->


					<style scope="scope">
#section_820828403 {
	padding-top: 0px;
	padding-bottom: 0px;
}
</style>
				</section>

				<section class="section" id="section_1699952996">
					<div class="bg section-bg fill bg-fill  bg-loaded"></div>
					<!-- .section-bg -->

					<div class="section-content relative">

						<div class="row row-small" id="row-1258249460">
							<div class="col div-xanh medium-3 small-12 large-3">
								<div class="col-inner"
									style="background-color: rgb(255, 255, 255); padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px;">


									<div
										class="row hide-for-medium large-columns-1 medium-columns- small-columns- row-xsmall">


										<c:forEach var="product" items="${product}" begin="0" end="10">
											<div class="col">
												<div class="col-inner">

													<div class="badge-container absolute left top z-1"></div>
													<div
														class="product-small box has-hover box-normal box-text-bottom">
														<div class="box-image"
															style="border-radius: 3%; width: 70%;">
															<div class="">
																<a href="/san-pham/${product.nameProduct }"> <img
																	width="82px" height="82px"
																	src="${pageContext.request.contextPath}/${product.imageProducts[1].URL }"
																	class="lazy-load show-on-hover absolute fill hide-for-small back-image"
																	alt="" style="width: 82px; height: 82px;" /><img
																	width="82" height="82"
																	src="${pageContext.request.contextPath}/${product.imageProducts[1].URL }"
																	class="lazy-load attachment-woocommerce_thumbnail size-woocommerce_thumbnail" />
																</a>
															</div>
															<div class="image-tools top right show-on-hover"></div>
															<c:set var="isEnough" value="${-1 }"></c:set>
															<c:if test="${product.quantity>0 }">
																<%
																	if (session.getAttribute("cart") == null) {
																%>
																<div
																	class="image-tools grid-tools text-center hide-for-small bottom hover-slide-in show-on-hover">

																	<a href="javascript:void(0);" data-quantity="1"
																		data-id="${product.id }"
																		class="add-to-cart-grid no-padding is-transparent product_type_simple add_to_cart_button"
																		aria-label="Thêm &ldquo;${product.nameProduct }&rdquo; vào giỏ hàng"
																		rel="nofollow">
																		<div class="cart-icon tooltip is-small"
																			title="Mua hàng">
																			<strong>+</strong>
																		</div>
																	</a>
																</div>
																<c:set var="isEnough" value="${1 }"></c:set>
																<%
																	} else {
																%>
																<c:set var="cid" value="${-1 }"></c:set>
																<c:forEach var="cart" items="${sessionScope.cart }"
																	varStatus="count">
																	<c:if test="${cart.products.id==product.id }">
																		<c:set var="cid" value="${cart.products.id }"></c:set>
																		<c:set var="ccount" value="${count.index }"></c:set>
																	</c:if>
																</c:forEach>
																<c:choose>
																	<c:when test="${cid==-1 }">
																		<div
																			class="image-tools grid-tools text-center hide-for-small bottom hover-slide-in show-on-hover">

																			<a href="javascript:void(0);" data-quantity="1"
																				data-id="${product.id }"
																				class="add-to-cart-grid no-padding is-transparent product_type_simple add_to_cart_button"
																				aria-label="Thêm &ldquo;${product.nameProduct }&rdquo; vào giỏ hàng"
																				rel="nofollow">
																				<div class="cart-icon tooltip is-small"
																					title="Mua hàng">
																					<strong>+</strong>
																				</div>
																			</a>
																		</div>
																		<c:set var="isEnough" value="${1 }"></c:set>
																	</c:when>
																	<c:when test="${cid==product.id }">
																		<c:if
																			test="${product.quantity>sessionScope.cart[ccount].quantity+1 }">
																			<div
																				class="image-tools grid-tools text-center hide-for-small bottom hover-slide-in show-on-hover">

																				<a href="javascript:void(0);" data-quantity="1"
																					data-id="${product.id }"
																					class="add-to-cart-grid no-padding is-transparent product_type_simple add_to_cart_button"
																					aria-label="Thêm &ldquo;${product.nameProduct }&rdquo; vào giỏ hàng"
																					rel="nofollow">
																					<div class="cart-icon tooltip is-small"
																						title="Mua hàng">
																						<strong>+</strong>
																					</div>
																				</a>
																			</div>
																			<c:set var="isEnough" value="${1 }"></c:set>
																		</c:if>
																	</c:when>
																</c:choose>
																<%
																	}
																%>
															</c:if>

															<c:if test="${product.quantity==0 || isEnough==-1 }">
																<div class="out-of-stock-label">Hết hàng</div>
															</c:if>
														</div>
														<!-- box-image -->

														<div class="box-text text-center">
															<div class="title-wrapper">
																<p
																	class="category uppercase is-smaller no-text-overflow product-cat op-7">
																	${product.category.nameCategory }</p>
																<p class="name product-title">
																	<a href="/san-pham/${product.nameProduct }">${product.nameProduct }</a>
																</p>
															</div>
															<div class="price-wrapper">
																<span class="price"><span
																	class="woocommerce-Price-amount amount"><fmt:setLocale
																			value="vn" /> <fmt:formatNumber
																			value="${product.price }" type="currency" /></span></span>
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
								</div>
							</div>
							<div class="col div-sp-phai medium-9 small-12 large-9">
								<div class="col-inner">
									<div class="img has-hover x md-x lg-x y md-y lg-y"
										id="image_1655356889">
										<div class="img-inner dark">
											<img width="1020" height="272"
												src="${pageContext.request.contextPath}/wp-content/uploads/2019/12/hải-sản-trường-sa-6-1-1400x374.jpg"
												class="lazy-load attachment-large size-large" alt=""
												sizes="(max-width: 1020px) 100vw, 1020px" />
										</div>

										<style scope="scope">
#image_1655356889 {
	width: 100%;
}
</style>
									</div>

									<div
										class="row large-columns-4 medium-columns-3 small-columns-2 row-xsmall has-shadow row-box-shadow-1">

										<c:forEach var="product1" items="${product1}">
											<div class="col">
												<div class="col-inner">

													<div class="badge-container absolute left top z-1"></div>
													<div
														class="product-small box has-hover box-normal box-text-bottom">
														<div class="box-image" style="border-radius: 3%;">
															<div class="">
																<a href="/san-pham/${product1.nameProduct }"> <img
																	width="300" height="300"
																	src="${pageContext.request.contextPath}/${product1.imageProducts[1].URL }"
																	class="lazy-load show-on-hover absolute fill hide-for-small back-image"
																	alt="" sizes="(max-width: 300px) 100vw, 300px" /><img
																	width="300" height="300"
																	src="${pageContext.request.contextPath}/${product1.imageProducts[1].URL }"
																	class="lazy-load attachment-woocommerce_thumbnail size-woocommerce_thumbnail"
																	alt="" srcset=""
																	sizes="(max-width: 300px) 100vw, 300px" />
																</a>
															</div>
															<div class="image-tools top right show-on-hover"></div>
															<c:if test="${product1.quantity>0 }">
																<c:set var="isEnough" value="${-1 }"></c:set>
																<%
																	if (session.getAttribute("cart") == null) {
																%>
																<div
																	class="image-tools grid-tools text-center hide-for-small bottom hover-slide-in show-on-hover">
																	<a href="javascript:void(0);" data-quantity="1"
																		data-id="${product1.id }"
																		class="add-to-cart-grid no-padding is-transparent product_type_simple add_to_cart_button"
																		aria-label="Thêm &ldquo;${product1.nameProduct }&rdquo; vào giỏ hàng"
																		rel="nofollow">
																		<div class="cart-icon tooltip is-small"
																			title="Mua hàng">
																			<strong>+</strong>
																		</div>
																	</a>
																</div>
																<c:set var="isEnough" value="${1 }"></c:set>
																<%
																	} else {
																%>
																<c:set var="cid" value="${-1 }"></c:set>
																<c:forEach var="cart" items="${sessionScope.cart }"
																	varStatus="count">
																	<c:if test="${cart.products.id==product1.id }">
																		<c:set var="cid" value="${cart.products.id }"></c:set>
																		<c:set var="ccount" value="${count.index }"></c:set>
																	</c:if>
																</c:forEach>
																<!-- /cart?id=${product1.id }&action=add -->
																<c:choose>
																	<c:when test="${cid==-1 }">
																		<div
																			class="image-tools grid-tools text-center hide-for-small bottom hover-slide-in show-on-hover">
																			<a href="javascript:void(0);" data-quantity="1"
																				data-id="${product1.id }"
																				class="add-to-cart-grid no-padding is-transparent product_type_simple add_to_cart_button"
																				aria-label="Thêm &ldquo;${product1.nameProduct }&rdquo; vào giỏ hàng"
																				rel="nofollow">
																				<div class="cart-icon tooltip is-small"
																					title="Mua hàng">
																					<strong>+</strong>
																				</div>
																			</a>
																		</div>
																		<c:set var="isEnough" value="${1 }"></c:set>
																	</c:when>
																	<c:when test="${cid==product1.id }">
																		<c:if
																			test="${product1.quantity>sessionScope.cart[ccount].quantity+1 }">
																			<div
																				class="image-tools grid-tools text-center hide-for-small bottom hover-slide-in show-on-hover">
																				<a href="javascript:void(0);" data-quantity="1"
																					data-id="${product1.id }"
																					class="add-to-cart-grid no-padding is-transparent product_type_simple add_to_cart_button"
																					aria-label="Thêm &ldquo;${product1.nameProduct }&rdquo; vào giỏ hàng"
																					rel="nofollow">
																					<div class="cart-icon tooltip is-small"
																						title="Mua hàng">
																						<strong>+</strong>
																					</div>
																				</a>
																			</div>
																			<c:set var="isEnough" value="${1 }"></c:set>
																		</c:if>
																	</c:when>
																</c:choose>
																<%
																	}
																%>
															</c:if>

															<c:if test="${product1.quantity==0 || isEnough==-1 }">
																<div class="out-of-stock-label">Hết hàng</div>
															</c:if>
														</div>
														<!-- box-image -->

														<div class="box-text text-center">
															<div class="title-wrapper">
																<p
																	class="category uppercase is-smaller no-text-overflow product-cat op-7">
																	${product1.category.nameCategory }</p>
																<p class="name product-title">
																	<a href="/san-pham/${product1.nameProduct }">${product1.nameProduct }</a>
																</p>
															</div>
															<div class="price-wrapper">
																<span class="price"><span
																	class="woocommerce-Price-amount amount"><fmt:setLocale
																			value="vn" /> <fmt:formatNumber
																			value="${product1.price }" type="currency" /></span></span>
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
								</div>
							</div>

							<style scope="scope">
</style>
						</div>
					</div>
					<!-- .section-content -->


					<style scope="scope">
#section_1699952996 {
	padding-top: 0px;
	padding-bottom: 0px;
	margin-bottom: 0px;
}
</style>
				</section>

				<section class="section" id="section_1293909756">
					<div class="bg section-bg fill bg-fill  bg-loaded"></div>
					<!-- .section-bg -->

					<div class="section-content relative">

						<div class="row row-small" id="row-1977488405">
							<div class="col div-sp-trai div-cam medium-3 small-12 large-3">
								<div class="col-inner"
									style="background-color: rgb(255, 255, 255);"></div>
							</div>


							<style scope="scope">
</style>
						</div>
					</div>
					<!-- .section-content -->


					<style scope="scope">
#section_1293909756 {
	padding-top: 0px;
	padding-bottom: 0px;
}
</style>
				</section>

				<section class="section" id="section_1722330640">
					<div class="bg section-bg fill bg-fill  ">


						<div class="section-bg-overlay absolute fill"></div>


					</div>
					<!-- .section-bg -->

					<div class="section-content relative">

						<div class="row" id="row-1530558917">
							<div class="col medium-6 small-12 large-6">
								<div class="col-inner">
									<div class="slider-wrapper relative" id="slider-365471353">
										<div
											class="slider slider-nav-circle slider-nav-large slider-nav-light slider-style-normal"
											data-flickity-options='{
																												"cellAlign": "center",
																												"imagesLoaded": true,
																												"lazyLoad": 1,
																												"freeScroll": false,
																												"wrapAround": true,
																												"autoPlay": 6000,
																												"pauseAutoPlayOnHover" : true,
																												"prevNextButtons": true,
																												"contain" : true,
																												"adaptiveHeight" : true,
																												"dragThreshold" : 10,
																												"percentPosition": true,
																												"pageDots": true,
																												"rightToLeft": false,
																												"draggable": true,
																												"selectedAttraction": 0.1,
																												"parallax" : 0,
																												"friction": 0.6        }'>

											<div class="row" id="row-52910131">
												<div class="col small-12 large-12">
													<div class="col-inner">
														<div
															class="icon-box testimonial-box icon-box-left text-left is-small">
															<div class="icon-box-img testimonial-image circle"
																style="width: 80px">
																<img width="100" height="107"
																	src="${pageContext.request.contextPath}/wp-content/uploads/2018/01/hung.jpg"
																	class="lazy-load attachment-thumbnail size-thumbnail"
																	alt="" />
															</div>
															<div class="icon-box-text p-last-0">
																<div class="star-rating">
																	<span style="width: 100%"><strong class="rating"></strong></span>
																</div>
																<div
																	class="testimonial-text line-height-small italic test_text first-reset last-reset is-italic">

																	<p>
																		<span style="color: #ffffff;">Mình khách quen
																			của Hải Sản Việt Hưng . Sản phẩm ở Trường Sa rất tươi
																			và ngon, nhân viên giao hàng thân thiện, nhiệt tình.
																			Mình sẽ ủng hộ dài dài.</span>
																	</p>
																</div>
																<div class="testimonial-meta pt-half">
																	<strong class="testimonial-name test_name"></strong> <span
																		class="testimonial-company test_company"></span>
																</div>
															</div>
														</div>
														<!-- .icon-box -->


													</div>
												</div>
											</div>
											<div class="row" id="row-1281432403">
												<div class="col small-12 large-12">
													<div class="col-inner">
														<div
															class="icon-box testimonial-box icon-box-left text-left is-small">
															<div class="icon-box-img testimonial-image circle"
																style="width: 80px">
																<img width="110" height="119"
																	src="${pageContext.request.contextPath}/wp-content/uploads/2018/01/dinh.jpg"
																	class="lazy-load attachment-thumbnail size-thumbnail"
																	alt="" />
															</div>
															<div class="icon-box-text p-last-0">
																<div class="star-rating">
																	<span style="width: 100%"><strong class="rating"></strong></span>
																</div>
																<div
																	class="testimonial-text line-height-small italic test_text first-reset last-reset is-italic">

																	<p>
																		<span style="color: #ffffff;">Giao hàng nhanh,
																			phục vụ tốt, tỉ mỉ hướng dẫn khách sơ chế. Đồ tươi
																			sống đa dạng, mãi là khách hàng trung thành của Việt
																			Hưng .</span>
																	</p>
																</div>
																<div class="testimonial-meta pt-half">
																	<strong class="testimonial-name test_name"></strong> <span
																		class="testimonial-company test_company"></span>
																</div>
															</div>
														</div>
														<!-- .icon-box -->


													</div>
												</div>
											</div>
										</div>

										<div class="loading-spin dark large centered"></div>

										<style scope="scope">
</style>
									</div>
									<!-- .ux-slider-wrapper -->


								</div>
							</div>

						</div>
					</div>
					<!-- .section-content -->


					<style scope="scope">
#section_1722330640 {
	padding-top: 30px;
	padding-bottom: 30px;
	background-color: rgb(0, 0, 0);
}

#section_1722330640 .section-bg-overlay {
	background-color: rgba(0, 0, 0, .5);
}

#section_1722330640 .section-bg.bg-loaded {
	background-image: url(wp-content/uploads/2018/01/nen.jpg);
}
</style>
				</section>

			</div>

		</main>
		<!-- #main -->

		<%@ include file="/WEB-INF/views/layout/footer-and-more.jsp"%>

		<%@include file="/WEB-INF/views/layout/include2.jsp"%>

		<script type='text/javascript'>
			/* <![CDATA[ */
			var _zxcvbnSettings = {
				"src" : "https:\/\/haisantruongsa.vn\/wp-includes\/js\/zxcvbn.min.js"
			};
			/* ]]> */
		</script>
		<script type='text/javascript'
			src='${pageContext.request.contextPath}/wp-includes/js/zxcvbn-async.min.js'></script>
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
			src='${pageContext.request.contextPath}/wp-admin/js/password-strength-meter.min.js'></script>
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
			src='${pageContext.request.contextPath}/wp-content/plugins/woocommerce/assets/js/frontend/password-strength-meter.min.js'></script>
</body>
</html>
