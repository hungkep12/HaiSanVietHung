<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!DOCTYPE html>
<!--[if IE 9 ]> <html lang="vi-VN" class="ie9 loading-site no-js"> <![endif]-->
<!--[if IE 8 ]> <html lang="vi-VN" class="ie8 loading-site no-js"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="vi-VN" class="loading-site no-js">
<!--<![endif]-->
<head>
<title>${newsByTitle[0].title }|Hải&nbsp;Sản&nbsp;Việt&nbsp;Hưng</title>
<%@ include file="/WEB-INF/views/layout/include-in-head.jsp"%>
</head>

<body data-rsssl=1
	class="post-template-default single single-post postid-386 single-format-standard logged-in theme-flatsome ot-vertical-menu ot-submenu-top woocommerce-no-js lightbox nav-dropdown-has-arrow">


	<a class="skip-link screen-reader-text" href="#main">Skip to
		content</a>

	<div id="wrapper">


		<%@ include file="/WEB-INF/views/layout/header.jsp"%>

		<main id="main" class="">

			<div id="content" class="blog-wrapper blog-single page-wrapper">


				<div class="row row-large row-divided ">

					<div class="large-9 col">

						<c:forEach var="newsByTitle" items="${newsByTitle }">
							<article id="post-${newsByTitle.id }"
								class="post-${newsByTitle.id } post type-post status-publish format-standard hentry category-tin-tuc">
								<div class="article-inner ">
									<header class="entry-header">
										<div class="entry-header-text entry-header-text-top text-left">
											<h6 class="entry-category is-xsmall">
												<a href="/tin-tuc" rel="category tag">Tin tức</a>
											</h6>

											<h1 class="entry-title">${newsByTitle.title }</h1>
											<div class="entry-divider is-divider small"></div>

											<div class="entry-meta uppercase is-xsmall">
												<span class="posted-on">Posted on <a
													href="/tin-tuc/${newsByTitle.title }" rel="bookmark"><time
															class="entry-date published"
															datetime="2019-12-27T16:33:47+07:00">${newsByTitle.title }</time>
												</a></span>
											</div>
											<!-- .entry-meta -->
										</div>
										<!-- .entry-header -->

									</header>
									<!-- post-header -->
									<div class="entry-content single-page">
										${newsByTitle.detail }</div>
									<!-- .entry-content2 -->


								</div>
								<!-- .article-inner -->
							</article>
						</c:forEach>

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
													src="${pageContext.request.contextPath}/wp-content/uploads/2020/03/banner-1.jpg"
													alt="" width="500" height="800">
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
											<input type="search" class="search-field mb-0"
												name="nameProduct" value="" id="s"
												placeholder="Tìm kiếm sản phẩm&hellip;" />
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
			<!-- #content .page-wrapper -->


		</main>
		<!-- #main -->

		<%@ include file="/WEB-INF/views/layout/footer-and-more.jsp"%>

		<%@include file="/WEB-INF/views/layout/include2.jsp"%>


		<script type='text/javascript'
			src='${pageContext.request.contextPath}/wp-includes/js/comment-reply.min.js'></script>
</body>
</html>
