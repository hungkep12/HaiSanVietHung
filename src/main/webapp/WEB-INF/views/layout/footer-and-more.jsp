<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!-- sử dụng taglibs của spring để bind-data từ end-point trả về. -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- tích hợp JSTL vào trong JSP -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<footer id="footer" class="footer-wrapper">


	<!-- FOOTER 1 -->
	<div class="footer-widgets footer footer-1">
		<div class="row large-columns-4 mb-0">
			<div id="woocommerce_product_categories-2"
				class="col pb-0 widget woocommerce widget_product_categories">
				<span class="widget-title">Danh mục sản phẩm</span>
				<div class="is-divider small"></div>
				<ul class="product-categories">
					<!--  -->
					<c:forEach var="category" items="${category }">
						<li class="cat-item cat-item-${category.id }"><a
							href="${pageContext.request.contextPath}/danh-muc/${category.nameCategory }">${category.nameCategory }</a></li>
					</c:forEach>
					<!--  -->

				</ul>
			</div>
			<div id="nav_menu-2" class="col pb-0 widget widget_nav_menu">
				<span class="widget-title">Dịch vụ khách hàng</span>
				<div class="is-divider small"></div>
				<div class="menu-menu-ho-tro-container">
					<ul id="menu-menu-ho-tro" class="menu">
						<c:forEach var="policies" items="${policies }">
							<li id="menu-item-${policies.id }"
								class="menu-item menu-item-type-post_type menu-item-object-page menu-item-${policies.id }"><a
								href="${pageContext.request.contextPath}/chinh-sach/${policies.title }">${policies.title }</a></li>
						</c:forEach>

					</ul>
				</div>
			</div>
			<div id="text-3" class="col pb-0 widget widget_text">
				<span class="widget-title">Facebook</span>
				<div class="is-divider small"></div>
				<div class="textwidget">
					<div id="fb-root" class=" fb_reset">
						<div
							style="position: absolute; top: -10000px; width: 0px; height: 0px;">
							<div></div>
						</div>
					</div>
					<p>
						<script async defer crossorigin="anonymous"
							src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v9.0"
							nonce="97bnLFCK"></script>
					</p>
					<div class="fb-page fb_iframe_widget"
						data-href="https://www.facebook.com/HaiSanVietHungCoTo/"
						data-tabs="timeline" data-width="" data-height="220"
						data-small-header="false" data-adapt-container-width="true"
						data-hide-cover="false" data-show-facepile="true">
						<blockquote cite="https://www.facebook.com/HaiSanVietHungCoTo/"
							class="fb-xfbml-parse-ignore">
							<a href="https://www.facebook.com/HaiSanVietHungCoTo/">Hải
								sản Việt Hưng</a>
						</blockquote>
					</div>


				</div>
			</div>
			<div id="text-2" class="col pb-0 widget widget_text">
				<span class="widget-title">Giới Thiệu</span>
				<div class="is-divider small"></div>
				<div class="textwidget">
					<div class="col-inner">

						<p class="mh-text-justify">
							<a
								href="${pageContext.request.contextPath}/gioi-thieu-ve-hai-san-viet-hung">Hải
								Sản Việt Hưng</a> &#8211; Chuỗi cửa hàng cung cấp hải sản cao cấp,
							hải sản tươi sống, hải sản đông lạnh, trang thiết bị phục vụ kinh
							doanh nhà hàng, cửa hàng hải sản&#8230;uy tín, chất lượng lâu năm
							số 1 Việt Nam.<br /> Hotline: 0868.43.40.00<br /> Fanpage: <a
								href="https://www.facebook.com/HaiSanVietHungCoTo/">Vựa hải
								sản Việt Hưng</a><br /> Zalo: <a href="https://zalo.me/0868434000">Vựa
								Hải Sản Việt Hưng</a>
						</p>
					</div>
				</div>
			</div>
		</div>
		<!-- end row -->
	</div>
	<!-- footer 1 -->


	<!-- FOOTER 2 -->



	<div class="absolute-footer light medium-text-center text-center">
		<div class="container clearfix">

			<div class="footer-secondary pull-right">
				<div class="payment-icons inline-block">
					<div class="payment-icon">
						<svg version="1.1" xmlns="http://www.w3.org/2000/svg"
							xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 64 32">
																														<path
								d="M10.781 7.688c-0.251-1.283-1.219-1.688-2.344-1.688h-8.376l-0.061 0.405c5.749 1.469 10.469 4.595 12.595 10.501l-1.813-9.219zM13.125 19.688l-0.531-2.781c-1.096-2.907-3.752-5.594-6.752-6.813l4.219 15.939h5.469l8.157-20.032h-5.501l-5.062 13.688zM27.72 26.061l3.248-20.061h-5.187l-3.251 20.061h5.189zM41.875 5.656c-5.125 0-8.717 2.72-8.749 6.624-0.032 2.877 2.563 4.469 4.531 5.439 2.032 0.968 2.688 1.624 2.688 2.499 0 1.344-1.624 1.939-3.093 1.939-2.093 0-3.219-0.251-4.875-1.032l-0.688-0.344-0.719 4.499c1.219 0.563 3.437 1.064 5.781 1.064 5.437 0.032 8.97-2.688 9.032-6.843 0-2.282-1.405-4-4.376-5.439-1.811-0.904-2.904-1.563-2.904-2.499 0-0.843 0.936-1.72 2.968-1.72 1.688-0.029 2.936 0.314 3.875 0.752l0.469 0.248 0.717-4.344c-1.032-0.406-2.656-0.844-4.656-0.844zM55.813 6c-1.251 0-2.189 0.376-2.72 1.688l-7.688 18.374h5.437c0.877-2.467 1.096-3 1.096-3 0.592 0 5.875 0 6.624 0 0 0 0.157 0.688 0.624 3h4.813l-4.187-20.061h-4zM53.405 18.938c0 0 0.437-1.157 2.064-5.594-0.032 0.032 0.437-1.157 0.688-1.907l0.374 1.72c0.968 4.781 1.189 5.781 1.189 5.781-0.813 0-3.283 0-4.315 0z"></path>
																													</svg>
					</div>
					<div class="payment-icon">
						<svg version="1.1" xmlns="http://www.w3.org/2000/svg"
							xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 64 32">
																													<path
								d="M35.255 12.078h-2.396c-0.229 0-0.444 0.114-0.572 0.303l-3.306 4.868-1.4-4.678c-0.088-0.292-0.358-0.493-0.663-0.493h-2.355c-0.284 0-0.485 0.28-0.393 0.548l2.638 7.745-2.481 3.501c-0.195 0.275 0.002 0.655 0.339 0.655h2.394c0.227 0 0.439-0.111 0.569-0.297l7.968-11.501c0.191-0.275-0.006-0.652-0.341-0.652zM19.237 16.718c-0.23 1.362-1.311 2.276-2.691 2.276-0.691 0-1.245-0.223-1.601-0.644-0.353-0.417-0.485-1.012-0.374-1.674 0.214-1.35 1.313-2.294 2.671-2.294 0.677 0 1.227 0.225 1.589 0.65 0.365 0.428 0.509 1.027 0.404 1.686zM22.559 12.078h-2.384c-0.204 0-0.378 0.148-0.41 0.351l-0.104 0.666-0.166-0.241c-0.517-0.749-1.667-1-2.817-1-2.634 0-4.883 1.996-5.321 4.796-0.228 1.396 0.095 2.731 0.888 3.662 0.727 0.856 1.765 1.212 3.002 1.212 2.123 0 3.3-1.363 3.3-1.363l-0.106 0.662c-0.040 0.252 0.155 0.479 0.41 0.479h2.147c0.341 0 0.63-0.247 0.684-0.584l1.289-8.161c0.040-0.251-0.155-0.479-0.41-0.479zM8.254 12.135c-0.272 1.787-1.636 1.787-2.957 1.787h-0.751l0.527-3.336c0.031-0.202 0.205-0.35 0.41-0.35h0.345c0.899 0 1.747 0 2.185 0.511 0.262 0.307 0.341 0.761 0.242 1.388zM7.68 7.473h-4.979c-0.341 0-0.63 0.248-0.684 0.584l-2.013 12.765c-0.040 0.252 0.155 0.479 0.41 0.479h2.378c0.34 0 0.63-0.248 0.683-0.584l0.543-3.444c0.053-0.337 0.343-0.584 0.683-0.584h1.575c3.279 0 5.172-1.587 5.666-4.732 0.223-1.375 0.009-2.456-0.635-3.212-0.707-0.832-1.962-1.272-3.628-1.272zM60.876 7.823l-2.043 12.998c-0.040 0.252 0.155 0.479 0.41 0.479h2.055c0.34 0 0.63-0.248 0.683-0.584l2.015-12.765c0.040-0.252-0.155-0.479-0.41-0.479h-2.299c-0.205 0.001-0.379 0.148-0.41 0.351zM54.744 16.718c-0.23 1.362-1.311 2.276-2.691 2.276-0.691 0-1.245-0.223-1.601-0.644-0.353-0.417-0.485-1.012-0.374-1.674 0.214-1.35 1.313-2.294 2.671-2.294 0.677 0 1.227 0.225 1.589 0.65 0.365 0.428 0.509 1.027 0.404 1.686zM58.066 12.078h-2.384c-0.204 0-0.378 0.148-0.41 0.351l-0.104 0.666-0.167-0.241c-0.516-0.749-1.667-1-2.816-1-2.634 0-4.883 1.996-5.321 4.796-0.228 1.396 0.095 2.731 0.888 3.662 0.727 0.856 1.765 1.212 3.002 1.212 2.123 0 3.3-1.363 3.3-1.363l-0.106 0.662c-0.040 0.252 0.155 0.479 0.41 0.479h2.147c0.341 0 0.63-0.247 0.684-0.584l1.289-8.161c0.040-0.252-0.156-0.479-0.41-0.479zM43.761 12.135c-0.272 1.787-1.636 1.787-2.957 1.787h-0.751l0.527-3.336c0.031-0.202 0.205-0.35 0.41-0.35h0.345c0.899 0 1.747 0 2.185 0.511 0.261 0.307 0.34 0.761 0.241 1.388zM43.187 7.473h-4.979c-0.341 0-0.63 0.248-0.684 0.584l-2.013 12.765c-0.040 0.252 0.156 0.479 0.41 0.479h2.554c0.238 0 0.441-0.173 0.478-0.408l0.572-3.619c0.053-0.337 0.343-0.584 0.683-0.584h1.575c3.279 0 5.172-1.587 5.666-4.732 0.223-1.375 0.009-2.456-0.635-3.212-0.707-0.832-1.962-1.272-3.627-1.272z"></path>
																												</svg>
					</div>
					<div class="payment-icon">
						<svg version="1.1" xmlns="http://www.w3.org/2000/svg"
							xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 64 32">
																												<path
								d="M7.114 14.656c-1.375-0.5-2.125-0.906-2.125-1.531 0-0.531 0.437-0.812 1.188-0.812 1.437 0 2.875 0.531 3.875 1.031l0.563-3.5c-0.781-0.375-2.406-1-4.656-1-1.594 0-2.906 0.406-3.844 1.188-1 0.812-1.5 2-1.5 3.406 0 2.563 1.563 3.688 4.125 4.594 1.625 0.594 2.188 1 2.188 1.656 0 0.625-0.531 0.969-1.5 0.969-1.188 0-3.156-0.594-4.437-1.343l-0.563 3.531c1.094 0.625 3.125 1.281 5.25 1.281 1.688 0 3.063-0.406 4.031-1.157 1.063-0.843 1.594-2.062 1.594-3.656-0.001-2.625-1.595-3.719-4.188-4.657zM21.114 9.125h-3v-4.219l-4.031 0.656-0.563 3.563-1.437 0.25-0.531 3.219h1.937v6.844c0 1.781 0.469 3 1.375 3.75 0.781 0.625 1.907 0.938 3.469 0.938 1.219 0 1.937-0.219 2.468-0.344v-3.688c-0.282 0.063-0.938 0.22-1.375 0.22-0.906 0-1.313-0.5-1.313-1.563v-6.156h2.406l0.595-3.469zM30.396 9.031c-0.313-0.062-0.594-0.093-0.876-0.093-1.312 0-2.374 0.687-2.781 1.937l-0.313-1.75h-4.093v14.719h4.687v-9.563c0.594-0.719 1.437-0.968 2.563-0.968 0.25 0 0.5 0 0.812 0.062v-4.344zM33.895 2.719c-1.375 0-2.468 1.094-2.468 2.469s1.094 2.5 2.468 2.5 2.469-1.124 2.469-2.5-1.094-2.469-2.469-2.469zM36.239 23.844v-14.719h-4.687v14.719h4.687zM49.583 10.468c-0.843-1.094-2-1.625-3.469-1.625-1.343 0-2.531 0.563-3.656 1.75l-0.25-1.469h-4.125v20.155l4.688-0.781v-4.719c0.719 0.219 1.469 0.344 2.125 0.344 1.157 0 2.876-0.313 4.188-1.75 1.281-1.375 1.907-3.5 1.907-6.313 0-2.499-0.469-4.405-1.407-5.593zM45.677 19.532c-0.375 0.687-0.969 1.094-1.625 1.094-0.468 0-0.906-0.093-1.281-0.281v-7c0.812-0.844 1.531-0.938 1.781-0.938 1.188 0 1.781 1.313 1.781 3.812 0.001 1.437-0.219 2.531-0.656 3.313zM62.927 10.843c-1.032-1.312-2.563-2-4.501-2-4 0-6.468 2.938-6.468 7.688 0 2.625 0.656 4.625 1.968 5.875 1.157 1.157 2.844 1.719 5.032 1.719 2 0 3.844-0.469 5-1.251l-0.501-3.219c-1.157 0.625-2.5 0.969-4 0.969-0.906 0-1.532-0.188-1.969-0.594-0.5-0.406-0.781-1.094-0.875-2.062h7.75c0.031-0.219 0.062-1.281 0.062-1.625 0.001-2.344-0.5-4.188-1.499-5.5zM56.583 15.094c0.125-2.093 0.687-3.062 1.75-3.062s1.625 1 1.687 3.062h-3.437z"></path>
																											</svg>
					</div>
					<div class="payment-icon">
						<svg version="1.1" xmlns="http://www.w3.org/2000/svg"
							xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 64 32">
																											<path
								d="M42.667-0c-4.099 0-7.836 1.543-10.667 4.077-2.831-2.534-6.568-4.077-10.667-4.077-8.836 0-16 7.163-16 16s7.164 16 16 16c4.099 0 7.835-1.543 10.667-4.077 2.831 2.534 6.568 4.077 10.667 4.077 8.837 0 16-7.163 16-16s-7.163-16-16-16zM11.934 19.828l0.924-5.809-2.112 5.809h-1.188v-5.809l-1.056 5.809h-1.584l1.32-7.657h2.376v4.753l1.716-4.753h2.508l-1.32 7.657h-1.585zM19.327 18.244c-0.088 0.528-0.178 0.924-0.264 1.188v0.396h-1.32v-0.66c-0.353 0.528-0.924 0.792-1.716 0.792-0.442 0-0.792-0.132-1.056-0.396-0.264-0.351-0.396-0.792-0.396-1.32 0-0.792 0.218-1.364 0.66-1.716 0.614-0.44 1.364-0.66 2.244-0.66h0.66v-0.396c0-0.351-0.353-0.528-1.056-0.528-0.442 0-1.012 0.088-1.716 0.264 0.086-0.351 0.175-0.792 0.264-1.32 0.703-0.264 1.32-0.396 1.848-0.396 1.496 0 2.244 0.616 2.244 1.848 0 0.353-0.046 0.749-0.132 1.188-0.089 0.616-0.179 1.188-0.264 1.716zM24.079 15.076c-0.264-0.086-0.66-0.132-1.188-0.132s-0.792 0.177-0.792 0.528c0 0.177 0.044 0.31 0.132 0.396l0.528 0.264c0.792 0.442 1.188 1.012 1.188 1.716 0 1.409-0.838 2.112-2.508 2.112-0.792 0-1.366-0.044-1.716-0.132 0.086-0.351 0.175-0.836 0.264-1.452 0.703 0.177 1.188 0.264 1.452 0.264 0.614 0 0.924-0.175 0.924-0.528 0-0.175-0.046-0.308-0.132-0.396-0.178-0.175-0.396-0.308-0.66-0.396-0.792-0.351-1.188-0.924-1.188-1.716 0-1.407 0.792-2.112 2.376-2.112 0.792 0 1.32 0.045 1.584 0.132l-0.265 1.451zM27.512 15.208h-0.924c0 0.442-0.046 0.838-0.132 1.188 0 0.088-0.022 0.264-0.066 0.528-0.046 0.264-0.112 0.442-0.198 0.528v0.528c0 0.353 0.175 0.528 0.528 0.528 0.175 0 0.35-0.044 0.528-0.132l-0.264 1.452c-0.264 0.088-0.66 0.132-1.188 0.132-0.881 0-1.32-0.44-1.32-1.32 0-0.528 0.086-1.099 0.264-1.716l0.66-4.225h1.584l-0.132 0.924h0.792l-0.132 1.585zM32.66 17.32h-3.3c0 0.442 0.086 0.749 0.264 0.924 0.264 0.264 0.66 0.396 1.188 0.396s1.1-0.175 1.716-0.528l-0.264 1.584c-0.442 0.177-1.012 0.264-1.716 0.264-1.848 0-2.772-0.924-2.772-2.773 0-1.142 0.264-2.024 0.792-2.64 0.528-0.703 1.188-1.056 1.98-1.056 0.703 0 1.274 0.22 1.716 0.66 0.35 0.353 0.528 0.881 0.528 1.584 0.001 0.617-0.046 1.145-0.132 1.585zM35.3 16.132c-0.264 0.97-0.484 2.201-0.66 3.697h-1.716l0.132-0.396c0.35-2.463 0.614-4.4 0.792-5.809h1.584l-0.132 0.924c0.264-0.44 0.528-0.703 0.792-0.792 0.264-0.264 0.528-0.308 0.792-0.132-0.088 0.088-0.31 0.706-0.66 1.848-0.353-0.086-0.661 0.132-0.925 0.66zM41.241 19.697c-0.353 0.177-0.838 0.264-1.452 0.264-0.881 0-1.584-0.308-2.112-0.924-0.528-0.528-0.792-1.32-0.792-2.376 0-1.32 0.35-2.42 1.056-3.3 0.614-0.879 1.496-1.32 2.64-1.32 0.44 0 1.056 0.132 1.848 0.396l-0.264 1.584c-0.528-0.264-1.012-0.396-1.452-0.396-0.707 0-1.235 0.264-1.584 0.792-0.353 0.442-0.528 1.144-0.528 2.112 0 0.616 0.132 1.056 0.396 1.32 0.264 0.353 0.614 0.528 1.056 0.528 0.44 0 0.924-0.132 1.452-0.396l-0.264 1.717zM47.115 15.868c-0.046 0.264-0.066 0.484-0.066 0.66-0.088 0.442-0.178 1.035-0.264 1.782-0.088 0.749-0.178 1.254-0.264 1.518h-1.32v-0.66c-0.353 0.528-0.924 0.792-1.716 0.792-0.442 0-0.792-0.132-1.056-0.396-0.264-0.351-0.396-0.792-0.396-1.32 0-0.792 0.218-1.364 0.66-1.716 0.614-0.44 1.32-0.66 2.112-0.66h0.66c0.086-0.086 0.132-0.218 0.132-0.396 0-0.351-0.353-0.528-1.056-0.528-0.442 0-1.012 0.088-1.716 0.264 0-0.351 0.086-0.792 0.264-1.32 0.703-0.264 1.32-0.396 1.848-0.396 1.496 0 2.245 0.616 2.245 1.848 0.001 0.089-0.021 0.264-0.065 0.529zM49.69 16.132c-0.178 0.528-0.396 1.762-0.66 3.697h-1.716l0.132-0.396c0.35-1.935 0.614-3.872 0.792-5.809h1.584c0 0.353-0.046 0.66-0.132 0.924 0.264-0.44 0.528-0.703 0.792-0.792 0.35-0.175 0.614-0.218 0.792-0.132-0.353 0.442-0.574 1.056-0.66 1.848-0.353-0.086-0.66 0.132-0.925 0.66zM54.178 19.828l0.132-0.528c-0.353 0.442-0.838 0.66-1.452 0.66-0.707 0-1.188-0.218-1.452-0.66-0.442-0.614-0.66-1.232-0.66-1.848 0-1.142 0.308-2.067 0.924-2.773 0.44-0.703 1.056-1.056 1.848-1.056 0.528 0 1.056 0.264 1.584 0.792l0.264-2.244h1.716l-1.32 7.657h-1.585zM16.159 17.98c0 0.442 0.175 0.66 0.528 0.66 0.35 0 0.614-0.132 0.792-0.396 0.264-0.264 0.396-0.66 0.396-1.188h-0.397c-0.881 0-1.32 0.31-1.32 0.924zM31.076 15.076c-0.088 0-0.178-0.043-0.264-0.132h-0.264c-0.528 0-0.881 0.353-1.056 1.056h1.848v-0.396l-0.132-0.264c-0.001-0.086-0.047-0.175-0.133-0.264zM43.617 17.98c0 0.442 0.175 0.66 0.528 0.66 0.35 0 0.614-0.132 0.792-0.396 0.264-0.264 0.396-0.66 0.396-1.188h-0.396c-0.881 0-1.32 0.31-1.32 0.924zM53.782 15.076c-0.353 0-0.66 0.22-0.924 0.66-0.178 0.264-0.264 0.749-0.264 1.452 0 0.792 0.264 1.188 0.792 1.188 0.35 0 0.66-0.175 0.924-0.528 0.264-0.351 0.396-0.879 0.396-1.584-0.001-0.792-0.311-1.188-0.925-1.188z"></path>
																										</svg>
					</div>
					<div class="payment-icon">
						<svg version="1.1" xmlns="http://www.w3.org/2000/svg"
							xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 64 32">
																										<path
								d="M13.043 8.356c-0.46 0-0.873 0.138-1.24 0.413s-0.662 0.681-0.885 1.217c-0.223 0.536-0.334 1.112-0.334 1.727 0 0.568 0.119 0.99 0.358 1.265s0.619 0.413 1.141 0.413c0.508 0 1.096-0.131 1.765-0.393v1.327c-0.693 0.262-1.389 0.393-2.089 0.393-0.884 0-1.572-0.254-2.063-0.763s-0.736-1.229-0.736-2.161c0-0.892 0.181-1.712 0.543-2.462s0.846-1.32 1.452-1.709 1.302-0.584 2.089-0.584c0.435 0 0.822 0.038 1.159 0.115s0.7 0.217 1.086 0.421l-0.616 1.276c-0.369-0.201-0.673-0.333-0.914-0.398s-0.478-0.097-0.715-0.097zM19.524 12.842h-2.47l-0.898 1.776h-1.671l3.999-7.491h1.948l0.767 7.491h-1.551l-0.125-1.776zM19.446 11.515l-0.136-1.786c-0.035-0.445-0.052-0.876-0.052-1.291v-0.184c-0.153 0.408-0.343 0.84-0.569 1.296l-0.982 1.965h1.739zM27.049 12.413c0 0.711-0.257 1.273-0.773 1.686s-1.213 0.62-2.094 0.62c-0.769 0-1.389-0.153-1.859-0.46v-1.398c0.672 0.367 1.295 0.551 1.869 0.551 0.39 0 0.694-0.072 0.914-0.217s0.329-0.343 0.329-0.595c0-0.147-0.024-0.275-0.070-0.385s-0.114-0.214-0.201-0.309c-0.087-0.095-0.303-0.269-0.648-0.52-0.481-0.337-0.818-0.67-1.013-1s-0.293-0.685-0.293-1.066c0-0.439 0.108-0.831 0.324-1.176s0.523-0.614 0.922-0.806 0.857-0.288 1.376-0.288c0.755 0 1.446 0.168 2.073 0.505l-0.569 1.189c-0.543-0.252-1.044-0.378-1.504-0.378-0.289 0-0.525 0.077-0.71 0.23s-0.276 0.355-0.276 0.607c0 0.207 0.058 0.389 0.172 0.543s0.372 0.36 0.773 0.615c0.421 0.272 0.736 0.572 0.945 0.9s0.313 0.712 0.313 1.151zM33.969 14.618h-1.597l0.7-3.22h-2.46l-0.7 3.22h-1.592l1.613-7.46h1.597l-0.632 2.924h2.459l0.632-2.924h1.592l-1.613 7.46zM46.319 9.831c0 0.963-0.172 1.824-0.517 2.585s-0.816 1.334-1.415 1.722c-0.598 0.388-1.288 0.582-2.067 0.582-0.891 0-1.587-0.251-2.086-0.753s-0.749-1.198-0.749-2.090c0-0.902 0.172-1.731 0.517-2.488s0.82-1.338 1.425-1.743c0.605-0.405 1.306-0.607 2.099-0.607 0.888 0 1.575 0.245 2.063 0.735s0.73 1.176 0.73 2.056zM43.395 8.356c-0.421 0-0.808 0.155-1.159 0.467s-0.627 0.739-0.828 1.283-0.3 1.135-0.3 1.771c0 0.5 0.116 0.877 0.348 1.133s0.558 0.383 0.979 0.383 0.805-0.148 1.151-0.444c0.346-0.296 0.617-0.714 0.812-1.255s0.292-1.148 0.292-1.822c0-0.483-0.113-0.856-0.339-1.12-0.227-0.264-0.546-0.396-0.957-0.396zM53.427 14.618h-1.786l-1.859-5.644h-0.031l-0.021 0.163c-0.111 0.735-0.227 1.391-0.344 1.97l-0.757 3.511h-1.436l1.613-7.46h1.864l1.775 5.496h0.021c0.042-0.259 0.109-0.628 0.203-1.107s0.407-1.942 0.94-4.388h1.43l-1.613 7.461zM13.296 20.185c0 0.98-0.177 1.832-0.532 2.556s-0.868 1.274-1.539 1.652c-0.672 0.379-1.464 0.568-2.376 0.568h-2.449l1.678-7.68h2.15c0.977 0 1.733 0.25 2.267 0.751s0.801 1.219 0.801 2.154zM8.925 23.615c0.536 0 1.003-0.133 1.401-0.399s0.71-0.657 0.934-1.174c0.225-0.517 0.337-1.108 0.337-1.773 0-0.54-0.131-0.95-0.394-1.232s-0.64-0.423-1.132-0.423h-0.624l-1.097 5.001h0.575zM18.64 24.96h-4.436l1.678-7.68h4.442l-0.293 1.334h-2.78l-0.364 1.686h2.59l-0.299 1.334h-2.59l-0.435 1.98h2.78l-0.293 1.345zM20.509 24.96l1.678-7.68h1.661l-1.39 6.335h2.78l-0.294 1.345h-4.436zM26.547 24.96l1.694-7.68h1.656l-1.694 7.68h-1.656zM33.021 23.389c0.282-0.774 0.481-1.27 0.597-1.487l2.346-4.623h1.716l-4.061 7.68h-1.814l-0.689-7.68h1.602l0.277 4.623c0.015 0.157 0.022 0.39 0.022 0.699-0.007 0.361-0.018 0.623-0.033 0.788h0.038zM41.678 24.96h-4.437l1.678-7.68h4.442l-0.293 1.334h-2.78l-0.364 1.686h2.59l-0.299 1.334h-2.59l-0.435 1.98h2.78l-0.293 1.345zM45.849 22.013l-0.646 2.947h-1.656l1.678-7.68h1.949c0.858 0 1.502 0.179 1.933 0.536s0.646 0.881 0.646 1.571c0 0.554-0.15 1.029-0.451 1.426s-0.733 0.692-1.298 0.885l1.417 3.263h-1.803l-1.124-2.947h-0.646zM46.137 20.689h0.424c0.474 0 0.843-0.1 1.108-0.3s0.396-0.504 0.396-0.914c0-0.287-0.086-0.502-0.258-0.646s-0.442-0.216-0.812-0.216h-0.402l-0.456 2.076zM53.712 20.39l2.031-3.11h1.857l-3.355 4.744-0.646 2.936h-1.645l0.646-2.936-1.281-4.744h1.694l0.7 3.11z"></path>
																									</svg>
					</div>
				</div>
			</div>
			<!-- -right -->

			<div class="footer-primary pull-left">
				<div class="copyright-footer">
					Copyright 2021 © <strong>Hải Sản Việt Hưng</strong>
				</div>
			</div>
			<!-- .left -->
		</div>
		<!-- .container -->
	</div>
	<!-- .absolute-footer -->
	<a href="#top"
		class="back-to-top button icon invert plain fixed bottom z-1 is-outline hide-for-medium circle"
		id="top-link"><i class="icon-angle-up"></i></a>

</footer>
<!-- .footer-wrapper -->

</div>
<!-- #wrapper -->

<!-- Mobile Sidebar -->
<div id="main-menu" class="mobile-sidebar no-scrollbar mfp-hide">
	<div class="sidebar-menu no-scrollbar ">
		<ul class="nav nav-sidebar  nav-vertical nav-uppercase">
			<li
				class="menu-item menu-item-type-post_type menu-item-object-page menu-item-home current-menu-item page_item page-item-41 current_page_item menu-item-50"><a
				href="${pageContext.request.contextPath}/" class="nav-top-link"><i
					class="_mi _before dashicons dashicons-admin-home"
					aria-hidden="true"></i><span>Trang chủ</span></a></li>
			<li
				class="menu-item menu-item-type-custom menu-item-object-custom menu-item-57"><a
				href="${pageContext.request.contextPath}/gioi-thieu-ve-hai-san-viet-hung"
				class="nav-top-link"><i
					class="_mi _before dashicons dashicons-welcome-write-blog"
					aria-hidden="true"></i><span>Giới thiệu</span></a></li>
			<li
				class="menu-item menu-item-type-post_type menu-item-object-page menu-item-53"><a
				href="${pageContext.request.contextPath}/cua-hang"
				class="nav-top-link"><i
					class="_mi _before dashicons dashicons-admin-multisite"
					aria-hidden="true"></i><span>Cửa hàng</span></a></li>
			<li
				class="httpshaisantruongsavncategorytin-tuc menu-item menu-item-type-taxonomy menu-item-object-category menu-item-177"><a
				href="${pageContext.request.contextPath}/tin-tuc"
				class="nav-top-link"><i
					class="_mi _before dashicons dashicons-format-aside"
					aria-hidden="true"></i><span>Tin tức</span></a></li>
			<li
				class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-180"><a
				href="#" class="nav-top-link"><i
					class="_mi _before dashicons dashicons-carrot" aria-hidden="true"></i><span>Chính
						sách</span></a>
				<ul class=children>
					<li
						class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1776"><a
						href="${pageContext.request.contextPath}/chinh-sach">Chính
							sách vận chuyển</a></li>
				</ul></li>
			<li
				class="menu-item menu-item-type-custom menu-item-object-custom menu-item-56"><a
				href="tel:0962626211" class="nav-top-link"><i
					class="_mi _before dashicons dashicons-admin-users"
					aria-hidden="true"></i><span>Liên hệ</span></a></li>
			<li class="account-item has-icon menu-item"><a
				href="${pageContext.request.contextPath}/tai-khoan"
				class="nav-top-link nav-top-not-logged-in"> <span
					class="header-account-title"> Đăng nhập </span>
			</a> <!-- .account-login-link --></li>
			<div id="mega-menu-wrap" class="ot-vm-hover">
				<div id="mega-menu-title">
					<i class="icon-menu"></i> Danh mục sản phẩm
				</div>
				<ul id="mega_menu" class="sf-menu sf-vertical">
					<c:forEach var="category" items="${category }">
						<li id="menu-item-${category.id }"
							class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-384"><a
							href="${pageContext.request.contextPath}/danh-muc/${category.nameCategory }"
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
	<!-- inner -->
</div>
<!-- #mobile-menu -->

<div onclick="window.location.href= 'tel:0868434000'"
	class="hotline-phone-ring-wrap">
	<div class="hotline-phone-ring">
		<div class="hotline-phone-ring-circle"></div>
		<div class="hotline-phone-ring-circle-fill"></div>
		<div class="hotline-phone-ring-img-circle">
			<a href="tel:0962626217" class="pps-btn-img"> <img
				src="${pageContext.request.contextPath}/wp-content/plugins/floating-click-to-contact-buttons/phone.png"
				alt="Gọi điện thoại" width="50">
			</a>
		</div>
	</div>
	<a href="tel:0962626217">
		<div class="hotline-bar">
			<a href="tel:0868434000"> <span class="text-hotline">0868.43.40.00</span>
			</a>
		</div>
	</a>
</div>
<!-- Fab Buttons -->
<div class="inner-fabs">
	<a target="blank" href="https://m.me/HaiSanVietHungCoTo"
		class="fab roundCool" id="activity-fab"
		data-tooltip="Nhắn tin Messenger"> <img class="inner-fab-icon"
		src="${pageContext.request.contextPath}/wp-content/plugins/floating-click-to-contact-buttons/messenger.png"
		alt="icons8-exercise-96" border="0">
	</a><a target="blank" href="https://zalo.me/0868434000"
		class="fab roundCool" id="chat-fab" data-tooltip="Nhắn tin Zalo">
		<img class="inner-fab-icon"
		src="${pageContext.request.contextPath}/wp-content/plugins/floating-click-to-contact-buttons/zalo.png"
		alt="chat-active-icon" border="0">
	</a>
</div>
<div class="fab roundCool call-animation" id="main-fab">
	<img class="img-circle"
		src="${pageContext.request.contextPath}/wp-content/plugins/floating-click-to-contact-buttons/lienhe.png"
		alt="" width="135" />
</div>
<!-- The Modal -->
<div id="myModal" class="modal">

	<!-- Modal content -->
	<div class="modal-content">
		<div class="modal-header">
			<span onclick="closeModal()" class="close">&times;</span>
		</div>
		<BR />
		<div class="modal-body"></div>
		<div class="modal-footer"></div>
	</div>

</div>