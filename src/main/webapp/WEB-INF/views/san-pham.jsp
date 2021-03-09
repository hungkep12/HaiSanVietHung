<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="com.haisanviethung.entities.ImageProducts"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page import="java.util.List"%>


<!DOCTYPE html>
<!--[if IE 9 ]> <html lang="vi-VN" class="ie9 loading-site no-js"> <![endif]-->
<!--[if IE 8 ]> <html lang="vi-VN" class="ie8 loading-site no-js"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="vi-VN" class="loading-site no-js">
<!--<![endif]-->
<head>
<title>${productByName[0].nameProduct }|Hải&nbsp;sản&nbsp;Việt&nbsp;Hưng</title>

<%@ include file="/WEB-INF/views/layout/include-in-head.jsp"%>

<link rel='stylesheet' id='photoswipe-css'
	href='${pageContext.request.contextPath}/wp-content/plugins/woocommerce/assets/css/photoswipe/photoswipe.css'
	type='text/css' media='all' />
<link rel='stylesheet' id='photoswipe-default-skin-css'
	href='${pageContext.request.contextPath}/wp-content/plugins/woocommerce/assets/css/photoswipe/default-skin/default-skin.css'
	type='text/css' media='all' />

</head>

<!-- #comment-## -->



<body data-rsssl=1
	class="product-template-default single single-product postid-804 logged-in theme-flatsome ot-vertical-menu ot-submenu-top woocommerce woocommerce-page woocommerce-no-js lightbox nav-dropdown-has-arrow">


	<a class="skip-link screen-reader-text" href="#main">Skip to
		content</a>

	<div id="wrapper">


		<%@ include file="/WEB-INF/views/layout/header.jsp"%>


		<main id="main" class="">

			<div class="shop-container">

				<div class="container">
					<div class="woocommerce-notices-wrapper"></div>
				</div>
				<!-- /.container -->
				<c:forEach var="productByName" items="${productByName }">

					<div id="product-${productByName.id }"
						class="product type-product post-${productByName.id } status-publish first instock product_cat-cua-ghe product_tag-cua-bien product_tag-cua-ca-mau product_tag-cua-nam-can product_tag-cua-ngon product_tag-cua-song has-post-thumbnail shipping-taxable purchasable product-type-simple">
						<div class="row content-row row-divided row-large row-reverse">

							<div id="product-sidebar"
								class="col large-3 hide-for-medium shop-sidebar ">
								<aside id="custom_html-3"
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
								<aside id="woocommerce_product_search-2"
									class="widget woocommerce widget_product_search">
									<span class="widget-title shop-sidebar">Tìm kiếm sản
										phẩm</span>
									<div class="is-divider small"></div>
									<form role="search" method="get" class="searchform"
										action="${pageContext.request.contextPath}/search">
										<div class="flex-row relative">
											<div class="flex-col flex-grow">
												<label class="screen-reader-text"
													for="woocommerce-product-search-field-2">Tìm kiếm:</label>
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
										<div class="live-search-results text-left z-top"></div>
									</form>
								</aside>
							</div>
							<!-- col large-3 -->

							<div class="col large-9">
								<div class="product-main">
									<div class="row">


										<div class="large-6 col">

											<div
												class="product-images relative mb-half has-hover woocommerce-product-gallery woocommerce-product-gallery--with-images woocommerce-product-gallery--columns-4 images"
												data-columns="4" style="opacity: 1;">

												<div class="badge-container is-larger absolute left top z-1">
												</div>
												<div
													class="image-tools absolute top show-on-hover right z-3">
												</div>

												<figure
													class="woocommerce-product-gallery__wrapper product-gallery-slider slider slider-nav-small mb-half flickity-enabled is-draggable slider-lazy-load-active"
													data-flickity-options="{
			&quot;cellAlign&quot;: &quot;center&quot;,
			&quot;wrapAround&quot;: true,
			&quot;autoPlay&quot;: false,
			&quot;prevNextButtons&quot;:true,
			&quot;adaptiveHeight&quot;: true,
			&quot;imagesLoaded&quot;: true,
			&quot;lazyLoad&quot;: 1,
			&quot;dragThreshold&quot; : 15,
			&quot;pageDots&quot;: false,
			&quot;rightToLeft&quot;: false       }"
													tabindex="0">
													<div class="flickity-viewport"
														style="height: 340px; touch-action: pan-y;">
														<div class="flickity-slider"
															style="left: 0px; transform: translateX(0%);">
															<c:forEach var="imageProducts" items="${imageProducts }"
																begin="0" end="0">
																<div
																	data-thumb="${pageContext.request.contextPath}/${imageProducts.URL }"
																	class="woocommerce-product-gallery__image slide first is-selected"
																	aria-selected="true"
																	style="position: absolute; left: 0%;">
																	<a
																		href="${pageContext.request.contextPath}/${imageProducts.URL }"><img
																		src="${pageContext.request.contextPath}/${imageProducts.URL }"
																		class="wp-post-image skip-lazy lazy-load-active"
																		alt="" title="Cua Nam Can-Ca Mau" data-caption=""
																		data-src="${pageContext.request.contextPath}/${imageProducts.URL }"
																		data-large_image="${pageContext.request.contextPath}/${imageProducts.URL }"
																		data-large_image_width="600"
																		data-large_image_height="600"
																		srcset="${pageContext.request.contextPath}/${imageProducts.URL }"
																		data-srcset="${pageContext.request.contextPath}/${imageProducts.URL }"
																		sizes="(max-width: 600px) 100vw, 600px"></a>
																</div>
															</c:forEach>
															<c:forEach var="imageProducts" items="${imageProducts }"
																begin="1" end="3">
																<div
																	data-thumb="${pageContext.request.contextPath}/${imageProducts.URL }"
																	class="woocommerce-product-gallery__image slide"
																	aria-selected="true"
																	style="position: absolute; left: ${(imageProducts.id%5-1)*100}%;">
																	<a
																		href="${pageContext.request.contextPath}/${imageProducts.URL }"><img
																		src="${pageContext.request.contextPath}/${imageProducts.URL }"
																		class="lazy-load skip-lazy" alt=""
																		title="Cua Nam Can-Ca Mau" data-caption=""
																		data-src="${pageContext.request.contextPath}/${imageProducts.URL }"
																		data-large_image="${pageContext.request.contextPath}/${imageProducts.URL }"
																		data-large_image_width="600"
																		data-large_image_height="600"
																		srcset="${pageContext.request.contextPath}/${imageProducts.URL }"
																		data-srcset="${pageContext.request.contextPath}/${imageProducts.URL }"
																		sizes="(max-width: 600px) 100vw, 600px"></a>
																</div>
															</c:forEach>
															<c:forEach var="imageProducts" items="${imageProducts }"
																begin="4">
																<div
																	data-thumb="${pageContext.request.contextPath}/${imageProducts.URL }"
																	class="woocommerce-product-gallery__image slide"
																	aria-selected="true"
																	style="position: absolute; left: <%=400%> %;">
																	<a
																		href="${pageContext.request.contextPath}/${imageProducts.URL }"><img
																		src="${pageContext.request.contextPath}/${imageProducts.URL }"
																		class="lazy-load skip-lazy" alt=""
																		title="Cua Nam Can-Ca Mau" data-caption=""
																		data-src="${pageContext.request.contextPath}/${imageProducts.URL }"
																		data-large_image="${pageContext.request.contextPath}/${imageProducts.URL }"
																		data-large_image_width="600"
																		data-large_image_height="600"
																		srcset="${pageContext.request.contextPath}/${imageProducts.URL }"
																		data-srcset="${pageContext.request.contextPath}/${imageProducts.URL }"
																		sizes="(max-width: 600px) 100vw, 600px"></a>
																</div>
															</c:forEach>
														</div>
													</div>
													<button
														class="flickity-button flickity-prev-next-button previous"
														type="button" aria-label="Previous">
														<svg class="flickity-button-icon" viewBox="0 0 100 100">
	<path d="M 10,50 L 60,100 L 70,90 L 30,50  L 70,10 L 60,0 Z"
																class="arrow"></path></svg>
													</button>
													<button
														class="flickity-button flickity-prev-next-button next"
														type="button" aria-label="Next">
														<svg class="flickity-button-icon" viewBox="0 0 100 100">
	<path d="M 10,50 L 60,100 L 70,90 L 30,50  L 70,10 L 60,0 Z"
																class="arrow"
																transform="translate(100, 100) rotate(180) "></path></svg>
													</button>
												</figure>


											</div>



										</div>


										<div
											class="product-info summary entry-summary col col-fit product-summary">
											<nav class="woocommerce-breadcrumb breadcrumbs uppercase">
												<a href="/">Trang chủ</a> <span class="divider">&#47;</span>
												<a href="/danh-muc/${productByName.category.nameCategory }">${productByName.category.nameCategory }</a>
											</nav>
											<h1 class="product-title product_title entry-title">${productByName.nameProduct }<c:if
													test="${productByName.quantity==0 }">(Hết hàng)</c:if>
											</h1>

											<div class="is-divider small"></div>


											<c:choose>
												<c:when test="${countComment!=null && star>0 }">
													<div class="woocommerce-product-rating">
														<a href="#reviews" class="woocommerce-review-link"
															rel="nofollow"><div class="star-rating">
																<span style="width: ${star*20.0}%"><strong
																	class="rating">${star }</strong> trên 5 dựa trên <span
																	class="rating">${countComment }</span> đánh giá</span>
															</div></a>
													</div>
												</c:when>
												<c:when test="${star==0 }">
													<div class="description">
														<p>Không có đánh giá nào</p>
													</div>
												</c:when>
												<c:otherwise>
													<div class="description">
														<p>Không có đánh giá nào</p>
													</div>
												</c:otherwise>
											</c:choose>




											<div class="price-wrapper">
												<p class="price product-page-price ">
													<span class="woocommerce-Price-amount amount"><fmt:setLocale
															value="vn" /> <fmt:formatNumber
															value="${productByName.price }" type="currency" /></span>
												</p>
											</div>
											<div class="product-short-description">
												<p>${productByName.description }</p>
											</div>
											<div class="chatbuttons">
												<a title="Chat FaceBook"
													href="https://m.me/HaiSanVietHungCoTo"><img
													src="${pageContext.request.contextPath}/wp-content/uploads/2018/04/chat-facebook.png"
													alt="Chat Facebook" /></a> <a title="Chat Zalo"
													href="https://zalo.me/0868434000"><img
													src="${pageContext.request.contextPath}/wp-content/uploads/2018/04/chat-zalo.png"
													alt="Chat Zalo" /></a>
											</div>

											<c:if test="${productByName.quantity>0 }">
												<%
													if (session.getAttribute("cart") == null) {
												%>
												<form class="cart" action="javascript:void(0);"
													method="post" enctype='multipart/form-data'
													data-id="${productByName.id }" id="add-mtp-cart">

													<div class="quantity buttons_added">
														<input type="button" value="-"
															class="minus button is-form"> <label
															class="screen-reader-text" for="quantity_6002fe5e2bf47">Số
															lượng</label> <input type="number" id="quantity_6002fe5e2bf47"
															class="input-text qty text" step="1" min="1"
															max="${productByName.quantity }" name="quantity"
															value="1" title="SL" size="4" inputmode="numeric" /> <input
															type="button" value="+" class="plus button is-form">
													</div>

													<button type="submit" name="add-to-cart" id="btn_add_mtp_to_cart"
														class="single_add_to_cart_button button alt">Mua
														hàng</button>

												</form>
												<%
													} else {
												%>
												<c:set var="cid" value="${-1 }"></c:set>
												<c:forEach var="cart" items="${sessionScope.cart }"
													varStatus="count">
													<c:if test="${cart.products.id==productByName.id }">
														<c:set var="cid" value="${cart.products.id }"></c:set>
														<c:set var="ccount" value="${count.index }"></c:set>
													</c:if>
												</c:forEach>
												<c:choose>
													<c:when test="${cid==-1 }">
														<form class="cart" action="javascript:void(0);"
															method="post" enctype='multipart/form-data'
															data-id="${productByName.id }" id="add-mtp-cart">

															<div class="quantity buttons_added">
																<input type="button" value="-"
																	class="minus button is-form"> <label
																	class="screen-reader-text" for="quantity_6002fe5e2bf47">Số
																	lượng</label> <input type="number" id="quantity_6002fe5e2bf47"
																	class="input-text qty text" step="1" min="1"
																	max="${productByName.quantity }" name="quantity"
																	value="1" title="SL" size="4" inputmode="numeric" /> <input
																	type="button" value="+" class="plus button is-form">
															</div>

															<button type="submit" name="add-to-cart"
																class="single_add_to_cart_button button alt">Mua
																hàng</button>

														</form>
													</c:when>
													<c:when test="${cid==productByName.id }">
														<form class="cart" action="javascript:void(0);"
															method="post" enctype='multipart/form-data'
															data-id="${productByName.id }" id="add-mtp-cart">

															<div class="quantity buttons_added">
																<input type="button" value="-"
																	class="minus button is-form"> <label
																	class="screen-reader-text" for="quantity_6002fe5e2bf47">Số
																	lượng</label> <input type="number" id="quantity_6002fe5e2bf47"
																	class="input-text qty text" step="1" min="1"
																	max="${productByName.quantity-sessionScope.cart[ccount].quantity }"
																	name="quantity" value="1" title="SL" size="4"
																	inputmode="numeric" /> <input type="button" value="+"
																	class="plus button is-form">
															</div>

															<button type="submit" name="add-to-cart"
																class="single_add_to_cart_button button alt">Mua
																hàng</button>

														</form>
													</c:when>
												</c:choose>
												<%
													}
												%>
											</c:if>


											<div
												style="border: 1px dashed #81d742; padding: 4px; border-radius: 4px;">Khuyến
												mãi: Tặng kèm nước chấm chanh ớt tiêu xanh với đơn hàng trên
												500k.!</div>

											<div class="product_meta">



												<span class="posted_in">Danh mục: <a
													href="/danh-muc/${productByName.category.nameCategory }"
													rel="tag">${productByName.category.nameCategory }</a></span>
											</div>
										</div>
										<!-- .summary -->
									</div>
									<!-- .row -->
								</div>
								<!-- .product-main -->
								<div class="product-footer">

									<div
										class="woocommerce-tabs wc-tabs-wrapper container tabbed-content">
										<ul
											class="tabs wc-tabs product-tabs small-nav-collapse nav nav-uppercase nav-line nav-center"
											role="tablist">
											<li class="description_tab active" id="tab-title-description"
												role="tab" aria-controls="tab-description"><a
												href="#tab-description"> Mô tả </a></li>
											<li class="bao-hanh_tab " id="tab-title-bao-hanh" role="tab"
												aria-controls="tab-bao-hanh"><a href="#tab-bao-hanh">
													Bảo hành </a></li>
											<li class="reviews_tab " id="tab-title-reviews" role="tab"
												aria-controls="tab-reviews"><a href="#tab-reviews">
													Đánh giá </a></li>
										</ul>
										<div class="tab-panels">
											<div
												class="woocommerce-Tabs-panel woocommerce-Tabs-panel--description panel entry-content active"
												id="tab-description" role="tabpanel"
												aria-labelledby="tab-title-description">
												${productByName.detail }</div>
											<div
												class="woocommerce-Tabs-panel woocommerce-Tabs-panel--bao-hanh panel entry-content "
												id="tab-bao-hanh" role="tabpanel"
												aria-labelledby="tab-title-bao-hanh">
												<h2
													class="yikes-custom-woo-tab-title yikes-custom-woo-tab-title-bao-hanh">Bảo
													hành</h2>
												<p>
													<strong>Hải Sản Việt Hưng kính chào quý khách.!</strong>
												</p>
												<p>
													<em>Nhằm nâng cao giá trị, đảm bảo chất lượng khi
														khách hàng mua hàng. Tại Hải Sản Việt Hưng đưa ra chính
														sách 1 đổi 1 khi khách hàng sử dụng sản phẩm. Với chính
														sách này, trong trường hợp khách hàng gặp phải con hàng bị
														hỏng, óp,.. chất lượng không được như Việt Hưng cam kết sẽ
														được đổi mới, hoặc hoàn lại tiền theo yêu cầu của khách
														hàng. </em>
												</p>
												<ul>
													<li>Khách hàng quay video, hoặc chụp bằng camera
														thường ngay khi phát hiện.</li>
													<li>Bỏ những con bị hỏng vào túi linong buộc chặt rồi
														cho vào ngăn đông của tủ lạnh.</li>
													<li>Gửi video, hình ảnh phản hồi lại qua cho Hải sản
														Việt Hưng</li>
												</ul>
												<p>Để kịp thời phản hồi và tối ưu nhất. Quý khách hàng
													vui lòng nhắn tin qua:</p>
												<p>
													Fanpage: <a href="https://m.me/HaiSanVietHungCoTo">Hải
														sản Việt Hưng</a>
												</p>
												<p>
													Zalo: <a href="https://zalo.me/0868434000">Vựa Hải Sản
														Việt Hưng</a>
												</p>
												<p>
													Hotline: <a href="tel:0868434000">0868.43.40.00</a>
												</p>
												<p>Ngay sau khi tiếp nhận thông tin. Việt Hưng sẽ cử một
													bạn kỹ thuật viên qua thẩm định, và tiến hành đổi mới hoặc
													hoàn tiền theo yêu cầu của quý khách hàng.</p>
												<p>Tại Hải Sản Việt Hưng, sản phẩm trước khi giao khách
													hàng luôn được Kỹ thuật viên tuyển chọn, lọc loại những
													hàng yếu không đạt chất lượng. Nhưng không thể tránh khỏi
													những sai sót, vì chất lượng nằm bên trong con hàng. Đến
													thời điểm hiện tại Việt Hưng chưa nhận được phản hồi tiêu
													cực hoặc gặp trường hợp khách đổi trả. Nhưng để khách hàng
													Yên Tâm trong quá trình sử dụng, Việt Hưng đưa ra chính
													sách 1 đổi 1 rõ ràng mong muốn mang đến cho khách hàng bữa
													ăn ngon miệng.</p>
												<p>Kính chúc quý khách hàng ngày mới tốt lành, xin trân
													trọng cảm ơn.!!!</p>
											</div>
											<div
												class="woocommerce-Tabs-panel woocommerce-Tabs-panel--reviews panel entry-content  active"
												id="tab-reviews" role="tabpanel"
												aria-labelledby="tab-title-reviews">
												<div id="reviews" class="woocommerce-Reviews row">
													<div id="comments" class="col large-7">
														<h3 class="woocommerce-Reviews-title normal">
															${countComment } đánh giá cho <span>${productByName.nameProduct }</span>
														</h3>
														<ol class="commentlist">
															<c:choose>
																<c:when test="${countComment>0 }">
																	<!-- #comment-## -->
																	<c:forEach var="comment" items="${comment }">
																		<li class="review byuser even thread-even depth-1"
																			id="li-comment-${comment.id }">
																			<div id="comment-${comment.id }"
																				class="comment_container review-item flex-row align-top">

																				<div class="flex-col">
																					<img alt=""
																						src="${pageContext.request.contextPath}/wp-content/plugins/floating-click-to-contact-buttons/avt.png"
																						class="avatar avatar-60 photo lazy-load-active"
																						height="60" width="60">
																				</div>

																				<div class="comment-text flex-col flex-grow">

																					<div class="star-rating" role="img"
																						aria-label="Được xếp hạng ${comment.rating } 5 sao">
																						<span style="width: ${comment.rating*20}%">Được
																							xếp hạng <strong class="rating">${comment.rating }</strong>
																							5 sao
																						</span>
																					</div>
																					<p class="meta">
																						<strong class="woocommerce-review__author">${comment.user.displayName }
																						</strong>
																					</p>

																					<div class="description">
																						<p>${comment.comment }</p>
																					</div>
																				</div>
																			</div>
																		</li>
																	</c:forEach>
																	<!-- #comment-## -->
																</c:when>
																<c:otherwise>
																	<div class="description">
																		<p>Không có đánh giá nào</p>
																	</div>
																</c:otherwise>
															</c:choose>

														</ol>
													</div>

													<div id="review_form_wrapper" class="large-5 col">
														<div id="review_form" class="col-inner">
															<div class="review-form-inner has-border">
																<%
																	if (session.getAttribute("emailUser") != null) {
																%>
																<c:if test="${userComment==0 }">
																	<div id="respond" class="comment-respond">
																		<h3 id="reply-title" class="comment-reply-title">
																			Thêm đánh giá <small><a rel="nofollow"
																				id="cancel-comment-reply-link"
																				href="/san-pham/${productByName.nameProduct }/#respond"
																				style="display: none;">Hủy</a></small>
																		</h3>
																		<!-- action="${pageContext.request.contextPath}/san-pham/${productByName.nameProduct }/add-comment" -->
																		<form:form method="post" id="commentform"
																			action="javascript:void(0);" class="comment-form"
																			modelAttribute="addComment" novalidate="">
																			<div class="comment-form-rating">
																				<label for="rating">Đánh giá của bạn</label> <select
																					name="rating" id="rating" required=""
																					style="display: none;">
																					<option value="">Xếp hạng…</option>
																					<option value="5">Rất tốt</option>
																					<option value="4">Tốt</option>
																					<option value="3">Trung bình</option>
																					<option value="2">Không tệ</option>
																					<option value="1">Rất tệ</option>
																				</select>
																			</div>
																			<p class="comment-form-comment">
																				<label for="comment">Nhận xét của bạn&nbsp;<span
																					class="required">*</span></label>
																				<textarea id="comment" name="comment" cols="45"
																					rows="8" required=""></textarea>
																			</p>
																			<p class="form-submit">
																				<input name="submit" type="submit" id="submit"
																					class="submit" value="Gửi đi"> <input
																					type="hidden" name="comment_post_ID" value="804"
																					id="comment_post_ID"> <input type="hidden"
																					name="comment_parent" id="comment_parent" value="0">
																			</p>
																			<input type="hidden" name="nameProduct"
																				id="nameProductInForm"
																				value="${productByName.nameProduct }">
																		</form:form>

																	</div>
																</c:if>
																<c:if test="${userComment>0 }">
																	<h1 id="reply-title" class="comment-reply-title">
																		Cảm ơn bạn đã đánh giá!</h1>
																</c:if>
																<%
																	} else if (session.getAttribute("emailUser") == null) {
																%>
																<div id="respond" class="comment-respond">
																	<h3 id="reply-title" class="comment-reply-title">
																		Thêm đánh giá <small><a rel="nofollow"
																			id="cancel-comment-reply-link"
																			href="/san-pham/${productByName.nameProduct }/#respond"
																			style="display: none;">Hủy</a></small>
																	</h3>
																	<p class="must-log-in">
																		Bạn phải <a
																			href="${pageContext.request.contextPath}/tai-khoan">đăng
																			nhập</a> để gửi đánh giá.
																	</p>

																</div>

																<%
																	}
																%>

																<!-- #respond -->
															</div>
														</div>
													</div>
												</div>

											</div>
											<!-- .tab-panels -->
										</div>
										<!-- .tabbed-content -->

									</div>

								</div>
								<!-- col large-9 -->

							</div>
							<!-- .row -->

						</div>
				</c:forEach>
			</div>
			<!-- shop container -->

		</main>
		<!-- #main -->

		<%@ include file="/WEB-INF/views/layout/footer-and-more.jsp"%>

		<!-- remove from cart -->
		<script>
			$(document).ready(function(){
				$(".remove").click(function(){
					
					var id = $(this).attr("data-id");
					$.ajax({
						  url: "${pageContext.request.contextPath}/ajax/remove-cart",
						  type: "get", //send it through get method
						  data: { 
							  id:id
						  },
						  success: function(response) {
							  document.location.reload(true);
		
						  },
						  error: function(xhr) {
						  }
						});
				});
			});
		</script>

		<script>
			// Get the modal
			var modal = document.getElementById("myModal");

			// Get the button that opens the modal
			var btn = document.getElementById("myBtnn");

			// Get the <span> element that closes the modal
			var span = document.getElementsByClassName("close")[0];

			// When the user clicks the button, open the modal 
			btn.onclick = function() {
				modal.style.display = "block";
			}

			// When the user clicks on <span> (x), close the modal
			span.onclick = function() {
				modal.style.display = "none";
			}

			// When the user clicks anywhere outside of the modal, close it
			window.onclick = function(event) {
				if (event.target == modal) {
					modal.style.display = "none";
				}
			}
		</script>
		<!-- Root element of PhotoSwipe. Must have class pswp. -->
		<div class="pswp" tabindex="-1" role="dialog" aria-hidden="true">

			<!-- Background of PhotoSwipe. It's a separate element as animating opacity is faster than rgba(). -->
			<div class="pswp__bg"></div>

			<!-- Slides wrapper with overflow:hidden. -->
			<div class="pswp__scroll-wrap">

				<!-- Container that holds slides.
		PhotoSwipe keeps only 3 of them in the DOM to save memory.
		Don't modify these 3 pswp__item elements, data is added later on. -->
				<div class="pswp__container">
					<div class="pswp__item"></div>
					<div class="pswp__item"></div>
					<div class="pswp__item"></div>
				</div>

				<!-- Default (PhotoSwipeUI_Default) interface on top of sliding area. Can be changed. -->
				<div class="pswp__ui pswp__ui--hidden">

					<div class="pswp__top-bar">

						<!--  Controls are self-explanatory. Order can be changed. -->

						<div class="pswp__counter"></div>

						<button class="pswp__button pswp__button--close"
							aria-label="Đóng (Esc)"></button>

						<button class="pswp__button pswp__button--zoom"
							aria-label="Phóng to/ thu nhỏ"></button>

						<div class="pswp__preloader">
							<div class="loading-spin"></div>
						</div>
					</div>

					<div
						class="pswp__share-modal pswp__share-modal--hidden pswp__single-tap">
						<div class="pswp__share-tooltip"></div>
					</div>

					<button class="pswp__button--arrow--left"
						aria-label="Ảnh trước (mũi tên trái)"></button>

					<button class="pswp__button--arrow--right"
						aria-label="Ảnh tiếp (mũi tên phải)"></button>

					<div class="pswp__caption">
						<div class="pswp__caption__center"></div>
					</div>

				</div>

			</div>

		</div>
		<script type="text/javascript">
			var c = document.body.className;
			c = c.replace(/woocommerce-no-js/, 'woocommerce-js');
			document.body.className = c;
		</script>
		<script type='text/javascript'
			src='${pageContext.request.contextPath}/wp-content/plugins/floating-click-to-contact-buttons/main.js'></script>
		<script type='text/javascript'>
			/* <![CDATA[ */
			var wpcf7 = {
				"apiSettings" : {
					"root" : "https:\/\/haisantruongsa.vn\/wp-json\/contact-form-7\/v1",
					"namespace" : "contact-form-7\/v1"
				}
			};
			/* ]]> */
		</script>
		<script type='text/javascript'
			src='${pageContext.request.contextPath}/wp-content/plugins/contact-form-7/includes/js/scripts.js'></script>
		<script type='text/javascript'
			src='${pageContext.request.contextPath}/wp-content/plugins/devvn-quick-buy/js/jquery.validate.min.js'></script>
		<script type='text/javascript'
			src='${pageContext.request.contextPath}/wp-includes/js/underscore.min.js'></script>
		<script type='text/javascript'>
			/* <![CDATA[ */
			var _wpUtilSettings = {
				"ajax" : {
					"url" : "\/wp-admin\/admin-ajax.php"
				}
			};
			/* ]]> */
		</script>
		<script type='text/javascript'
			src='${pageContext.request.contextPath}/wp-includes/js/wp-util.min.js'></script>
		<script type='text/javascript'
			src='${pageContext.request.contextPath}/wp-content/plugins/woocommerce/assets/js/jquery-blockui/jquery.blockUI.min.js'></script>
		<script type='text/javascript'>
			/* <![CDATA[ */
			var wc_add_to_cart_variation_params = {
				"wc_ajax_url" : "\/?wc-ajax=%%endpoint%%",
				"i18n_no_matching_variations_text" : "R\u1ea5t ti\u1ebfc, kh\u00f4ng c\u00f3 s\u1ea3n ph\u1ea9m n\u00e0o ph\u00f9 h\u1ee3p v\u1edbi l\u1ef1a ch\u1ecdn c\u1ee7a b\u1ea1n. H\u00e3y ch\u1ecdn m\u1ed9t ph\u01b0\u01a1ng th\u1ee9c k\u1ebft h\u1ee3p kh\u00e1c.",
				"i18n_make_a_selection_text" : "Ch\u1ecdn c\u00e1c t\u00f9y ch\u1ecdn cho s\u1ea3n ph\u1ea9m tr\u01b0\u1edbc khi cho s\u1ea3n ph\u1ea9m v\u00e0o gi\u1ecf h\u00e0ng c\u1ee7a b\u1ea1n.",
				"i18n_unavailable_text" : "R\u1ea5t ti\u1ebfc, s\u1ea3n ph\u1ea9m n\u00e0y hi\u1ec7n kh\u00f4ng t\u1ed3n t\u1ea1i. H\u00e3y ch\u1ecdn m\u1ed9t ph\u01b0\u01a1ng th\u1ee9c k\u1ebft h\u1ee3p kh\u00e1c."
			};
			/* ]]> */
		</script>
		<!-- <script type='text/javascript'
			src='${pageContext.request.contextPath}/wp-content/plugins/woocommerce/assets/js/frontend/add-to-cart-variation.min.js'></script> -->
		<script type='text/javascript'>
			/* <![CDATA[ */
			var devvn_quickbuy_array = {
				"ajaxurl" : "https:\/\/haisantruongsa.vn\/wp-admin\/admin-ajax.php",
				"siteurl" : "https:\/\/haisantruongsa.vn",
				"popup_error" : "\u0110\u1eb7t h\u00e0ng th\u1ea5t b\u1ea1i. Vui l\u00f2ng \u0111\u1eb7t h\u00e0ng l\u1ea1i. Xin c\u1ea3m \u01a1n!",
				"out_of_stock_mess" : "H\u1ebft h\u00e0ng!",
				"price_decimal" : ".",
				"num_decimals" : "0",
				"price_thousand" : ",",
				"currency_format" : "\u20ab",
				"qty_text" : "S\u1ed1 l\u01b0\u1ee3ng",
				"name_text" : "H\u1ecd v\u00e0 t\u00ean l\u00e0 b\u1eaft bu\u1ed9c",
				"phone_text" : "S\u1ed1 \u0111i\u1ec7n tho\u1ea1i l\u00e0 b\u1eaft bu\u1ed9c",
				"valid_phone_text" : "Nh\u1eadp l\u1ea1i s\u1ed1 \u0111i\u1ec7n tho\u1ea1i l\u00e0 b\u1eaft bu\u1ed9c",
				"valid_phone_text_equalto" : "Vui l\u00f2ng nh\u1eadp l\u1ea1i c\u00f9ng s\u1ed1 \u0111i\u1ec7n tho\u1ea1i",
				"email_text" : "Email l\u00e0 b\u1eaft bu\u1ed9c",
				"quan_text" : "Qu\u1eadn huy\u1ec7n l\u00e0 b\u1eaft bu\u1ed9c",
				"xa_text" : "X\u00e3\/Ph\u01b0\u1eddng l\u00e0 b\u1eaft bu\u1ed9c",
				"address_text" : "S\u1ed1 nh\u00e0, t\u00ean \u0111\u01b0\u1eddng l\u00e0 b\u1eaft bu\u1ed9c"
			};
			/* ]]> */
		</script>
		<!-- <script type='text/javascript'
			src='${pageContext.request.contextPath}/wp-content/plugins/devvn-quick-buy/js/devvn-quick-buy.js'></script> -->
		<script type='text/javascript'
			src='${pageContext.request.contextPath}/wp-content/plugins/ot-flatsome-vertical-menu/assets/vendor/superfish/hoverIntent.js'></script>
		<script type='text/javascript'
			src='${pageContext.request.contextPath}/wp-content/plugins/ot-flatsome-vertical-menu/assets/vendor/superfish/superfish.min.js'></script>
		<script type='text/javascript'
			src='${pageContext.request.contextPath}/wp-content/plugins/ot-flatsome-vertical-menu/assets/js/ot-vertical-menu.min.js'></script>
		<script type='text/javascript'>
			/* <![CDATA[ */
			var wc_add_to_cart_params = {
				"ajax_url" : "\/wp-admin\/admin-ajax.php",
				"wc_ajax_url" : "\/?wc-ajax=%%endpoint%%",
				"i18n_view_cart" : "Xem gi\u1ecf h\u00e0ng",
				"cart_url" : "https:\/\/haisantruongsa.vn\/gio-hang\/",
				"is_cart" : "",
				"cart_redirect_after_add" : "no"
			};
			/* ]]> */
		</script>
		<script type='text/javascript'
			src='${pageContext.request.contextPath}/wp-content/plugins/woocommerce/assets/js/frontend/add-to-cart.min.js'></script>
		<script type='text/javascript'
			src='${pageContext.request.contextPath}/wp-content/plugins/woocommerce/assets/js/photoswipe/photoswipe.min.js'></script>
		<script type='text/javascript'
			src='${pageContext.request.contextPath}/wp-content/plugins/woocommerce/assets/js/photoswipe/photoswipe-ui-default.min.js'></script>
		<script type='text/javascript'>
			/* <![CDATA[ */
			var wc_single_product_params = {
				"i18n_required_rating_text" : "Vui l\u00f2ng ch\u1ecdn m\u1ed9t m\u1ee9c \u0111\u00e1nh gi\u00e1",
				"review_rating_required" : "yes",
				"flexslider" : {
					"rtl" : false,
					"animation" : "slide",
					"smoothHeight" : true,
					"directionNav" : false,
					"controlNav" : "thumbnails",
					"slideshow" : false,
					"animationSpeed" : 500,
					"animationLoop" : false,
					"allowOneSlide" : false
				},
				"zoom_enabled" : "",
				"zoom_options" : [],
				"photoswipe_enabled" : "1",
				"photoswipe_options" : {
					"shareEl" : false,
					"closeOnScroll" : false,
					"history" : false,
					"hideAnimationDuration" : 0,
					"showAnimationDuration" : 0
				},
				"flexslider_enabled" : ""
			};
			/* ]]> */
		</script>
		<script type='text/javascript'
			src='${pageContext.request.contextPath}/wp-content/plugins/woocommerce/assets/js/frontend/single-product.min.js'></script>
		<script type='text/javascript'
			src='${pageContext.request.contextPath}/wp-content/plugins/woocommerce/assets/js/js-cookie/js.cookie.min.js'></script>
		<script type='text/javascript'>
			/* <![CDATA[ */
			var woocommerce_params = {
				"ajax_url" : "\/wp-admin\/admin-ajax.php",
				"wc_ajax_url" : "\/?wc-ajax=%%endpoint%%"
			};
			/* ]]> */
		</script>
		<script type='text/javascript'
			src='${pageContext.request.contextPath}/wp-content/plugins/woocommerce/assets/js/frontend/woocommerce.min.js'></script>
		<script type='text/javascript'>
			/* <![CDATA[ */
			var wc_cart_fragments_params = {
				"ajax_url" : "\/wp-admin\/admin-ajax.php",
				"wc_ajax_url" : "\/?wc-ajax=%%endpoint%%",
				"cart_hash_key" : "wc_cart_hash_d87e3cc10a1ec70f7804f755840b39d0",
				"fragment_name" : "wc_fragments_d87e3cc10a1ec70f7804f755840b39d0",
				"request_timeout" : "5000"
			};
			/* ]]> */
		</script>
		<script type='text/javascript'
			src='${pageContext.request.contextPath}/wp-content/plugins/woocommerce/assets/js/frontend/cart-fragments.min.js'></script>
		<script type='text/javascript'
			src='${pageContext.request.contextPath}/wp-content/themes/flatsome/inc/extensions/flatsome-live-search/flatsome-live-search.js'></script>
		<script type='text/javascript'
			src='${pageContext.request.contextPath}/wp-includes/js/hoverIntent.min.js'></script>
		<script type='text/javascript'>
			/* <![CDATA[ */
			var flatsomeVars = {
				"ajaxurl" : "https:\/\/haisantruongsa.vn\/wp-admin\/admin-ajax.php",
				"rtl" : "",
				"sticky_height" : "70",
				"lightbox" : {
					"close_markup" : "<button title=\"%title%\" type=\"button\" class=\"mfp-close\"><svg xmlns=\"http:\/\/www.w3.org\/2000\/svg\" width=\"28\" height=\"28\" viewBox=\"0 0 24 24\" fill=\"none\" stroke=\"currentColor\" stroke-width=\"2\" stroke-linecap=\"round\" stroke-linejoin=\"round\" class=\"feather feather-x\"><line x1=\"18\" y1=\"6\" x2=\"6\" y2=\"18\"><\/line><line x1=\"6\" y1=\"6\" x2=\"18\" y2=\"18\"><\/line><\/svg><\/button>",
					"close_btn_inside" : false
				},
				"user" : {
					"can_edit_pages" : false
				}
			};
			/* ]]> */
		</script>
		<script type='text/javascript'
			src='${pageContext.request.contextPath}/wp-content/themes/flatsome/assets/js/flatsome.js'></script>
		<script type='text/javascript'
			src='${pageContext.request.contextPath}/wp-content/themes/flatsome/inc/extensions/flatsome-lazy-load/flatsome-lazy-load.js'></script>
		<script type='text/javascript'
			src='${pageContext.request.contextPath}/wp-content/themes/flatsome/assets/js/woocommerce.js'></script>
		<script type='text/javascript'
			src='${pageContext.request.contextPath}/wp-includes/js/comment-reply.min.js'></script>
		<script type='text/javascript'
			src='${pageContext.request.contextPath}/wp-includes/js/wp-embed.min.js'></script>
		<script>
			$(document)
					.ready(
							function() {
								$("#commentform")
										.submit(
												function() {
													var rating = $("#rating")
															.val();
													var comment = $("#comment")
															.val();
													var nameProduct = $(
															"#nameProductInForm")
															.val();
													$
															.ajax({
																url : "${pageContext.request.contextPath}/ajax/add-comment",
																type : "post", //send it through get method
																data : {
																	nameProduct : nameProduct,
																	rating : rating,
																	comment : comment
																},
																success : function(
																		response) {
																	$(
																			"#tab-reviews")
																			.html(
																					response);

																},
																error : function(
																		xhr) {

																}
															});
												});

							});
		</script>
		
		<!-- add to cart -->
		<script>
		
			$(document).ready(function(){
				$("#add-mtp-cart").submit(function(){
					
					var id = $(this).attr("data-id");
					var quantity = $(".product-info").find('input[name="quantity"]').val();
					
					$.ajax({
						  url: "${pageContext.request.contextPath}/ajax/add-to-cart2",
						  type: "post", //send it through get method
						  data: { 
							  quantity:quantity,
							  id:id
						  },
						  success: function(response) {
							  $(".cart-item").html(response);
							  
						  },
						  error: function(xhr) {
						  }
						});
					$("#btn_add_mtp_to_cart").attr("class","single_add_to_cart_button button alt");					
				});
			});
		
		</script>
</body>
</html>
