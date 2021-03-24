<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>


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
					action="${pageContext.request.contextPath}/san-pham">
					<div class="price_slider_wrapper">
						<div class="price_slider" style="display: none;"></div>
						<div class="price_slider_amount" data-step="10">
							<input type="text" id="min_price" name="min_price" value="70000"
								data-min="70000" placeholder="Giá thấp nhất" /> <input
								type="text" id="max_price" name="max_price" value="1850000"
								data-max="1850000" placeholder="Giá cao nhất" />
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

				<c:forEach var="product" items="${product }">
					<div
						class="product-small col has-hover product type-product post-${product.id } status-publish first instock has-post-thumbnail shipping-taxable purchasable product-type-simple">
						<div class="col-inner">

							<div class="badge-container absolute left top z-1"></div>
							<div class="product-small box ">
								<div class="box-image">
									<div class="image-fade_in_back">
										<a href="/san-pham/${product.nameProduct }"> <img
											width="300" height="300"
											src="${pageContext.request.contextPath}/${product.imageProducts[1].URL }"
											class="lazy-load attachment-woocommerce_thumbnail size-woocommerce_thumbnail"
											alt="" sizes="(max-width: 300px) 100vw, 300px" /><img
											width="300" height="300"
											src="${pageContext.request.contextPath}/${product.imageProducts[1].URL }"
											class="lazy-load show-on-hover absolute fill hide-for-small back-image"
											sizes="(max-width: 300px) 100vw, 300px" />
										</a>
									</div>
									<div class="image-tools is-small top right show-on-hover">
									</div>
									<div
										class="image-tools is-small hide-for-small bottom left show-on-hover">
									</div>
									<c:if test="${product.quantity>0 }">
										<c:set var="isEnough" value="${-1 }"></c:set>
										<%
											if (session.getAttribute("cart") == null) {
										%>
										<div
											class="image-tools grid-tools text-center hide-for-small bottom hover-slide-in show-on-hover">
											<a href="javascript:void(0);" data-quantity="1"
												data-id="${product.id }"
												class="add-to-cart-grid no-padding is-transparent product_type_simple add_to_cart_button"
												aria-label="Thêm &ldquo;${product.nameProduct }&rdquo; vào giỏ hàng"
												rel="nofollow"><div class="cart-icon tooltip is-small"
													title="Mua hàng">
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
														rel="nofollow"><div class="cart-icon tooltip is-small"
															title="Mua hàng">
															<strong>+</strong>
														</div></a>
												</div>
												<c:set var="isEnough" value="${1 }"></c:set>
											</c:when>
											<c:when test="${cid==product.id }">
												<c:if
													test="${product.quantity>=sessionScope.cart[ccount].quantity+1 }">
													<div
														class="image-tools grid-tools text-center hide-for-small bottom hover-slide-in show-on-hover">
														<a href="javascript:void(0);" data-quantity="1"
															data-id="${product.id }"
															class="add-to-cart-grid no-padding is-transparent product_type_simple add_to_cart_button"
															aria-label="Thêm &ldquo;${product.nameProduct }&rdquo; vào giỏ hàng"
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

									<c:if test="${product.quantity==0 || isEnough==-1 }">
										<div class="out-of-stock-label">Hết hàng</div>
									</c:if>
								</div>
								<!-- box-image -->

								<div class="box-text box-text-products">
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
													value="vn" /> <fmt:formatNumber value="${product.price }"
													type="currency" /></span></span>
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
	</div>
</div>
