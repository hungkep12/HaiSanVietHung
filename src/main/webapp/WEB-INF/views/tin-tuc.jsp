<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<!--[if IE 9 ]> <html lang="vi-VN" class="ie9 loading-site no-js"> <![endif]-->
<!--[if IE 8 ]> <html lang="vi-VN" class="ie8 loading-site no-js"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="vi-VN" class="loading-site no-js">
<!--<![endif]-->
<head>
<title>Tin tức | Hải sản Việt Hưng</title>
<!-- All In One SEO Pack 3.7.0ob_start_detected [-1,-1] -->
<meta name="robots" content="noindex,follow" />
<%@ include file="/WEB-INF/views/layout/include-in-head.jsp"%>
</head>

<body data-rsssl=1
	class="archive category category-tin-tuc category-17 logged-in theme-flatsome ot-vertical-menu ot-submenu-top woocommerce-no-js lightbox nav-dropdown-has-arrow">


	<a class="skip-link screen-reader-text" href="#main">Skip to
		content</a>

	<div id="wrapper">
		<%@ include file="/WEB-INF/views/layout/header.jsp"%>
		<main id="main" class="">

			<div id="content" class="blog-wrapper blog-archive page-wrapper">

				<div class="row row-large row-divided ">

					<div class="large-9 col">
						<div class="row large-columns-1 medium-columns- small-columns-1">

							<c:forEach var="news" items="${news }">
								<div class="col post-item">
									<div class="col-inner">
										<a href="/tin-tuc/${news.title }" class="plain">
											<div
												class="box box-vertical box-text-bottom box-blog-post has-hover">
												<div class="box-text text-left">
													<div class="box-text-inner blog-post-inner">


														<h5 class="post-title is-large ">${news.title }</h5>
														<div class="post-meta is-small op-8">
															<fmt:parseDate value="${news.date }" pattern="yyyy-MM-dd"
																var="date" />
															<fmt:formatDate value="${date}" pattern="dd-MM-yyyy" />
														</div>
														<div class="is-divider"></div>
														<p class="from_the_blog_excerpt ">${news.description }[...]</p>

													</div>
													<!-- .box-text-inner -->
												</div>
												<!-- .box-text -->
											</div> <!-- .box -->
										</a>
										<!-- .link -->
									</div>
									<!-- .col-inner -->
								</div>
							</c:forEach>
							<!-- .col -->
						</div>

					</div>
					<!-- .large-9 -->

					<div class="post-sidebar large-3 col">
						<div id="secondary" class="widget-area " role="complementary">
							<aside id="custom_html-2"
								class="widget_text widget widget_custom_html">
								<div class="textwidget custom-html-widget">
									<aside id="text-7" class="widget widget_text">
										<div class="textwidget">
											<p>
												<img class="size-full wp-image-1684 aligncenter"
													src="wp-content/uploads/2020/03/banner-1.jpg" alt=""
													width="500" height="800">
											</p>
										</div>
									</aside>
								</div>
							</aside>
							<aside id="search-2" class="widget widget_search">
								<form method="get" class="searchform"
									action="${pageContext.request.contextPath}/search"
									role="search">
									<div class="flex-row relative">
										<div class="flex-col flex-grow">
											<input type="search" class="search-field mb-0" name="s"
												value="" id="s" placeholder="Tìm kiếm&hellip;" />
										</div>
										<!-- .flex-col -->
										<div class="flex-col">
											<button type="submit"
												class="ux-search-submit submit-button secondary button icon mb-0"
												aria-label="Submit">
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
						<!-- #secondary -->
					</div>
					<!-- .post-sidebar -->

				</div>
				<!-- .row -->

			</div>
			<!-- .page-wrapper .blog-wrapper -->


		</main>
		<!-- #main -->
		<%@ include file="/WEB-INF/views/layout/footer-and-more.jsp"%>

		<%@include file="/WEB-INF/views/layout/include2.jsp"%>
</body>
</html>
