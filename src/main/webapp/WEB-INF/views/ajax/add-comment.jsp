<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<div
	class="woocommerce-Tabs-panel woocommerce-Tabs-panel--reviews panel entry-content  active"
	id="tab-reviews" role="tabpanel" aria-labelledby="tab-title-reviews">
	<div id="reviews" class="woocommerce-Reviews row">
		<div id="comments" class="col large-7">
			<h3 class="woocommerce-Reviews-title normal">
				${countComment } đánh giá cho <span>${nameProduct }</span>
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
											class="avatar avatar-60 photo lazy-load-active" height="60"
											width="60">
									</div>

									<div class="comment-text flex-col flex-grow">

										<div class="star-rating" role="img"
											aria-label="Được xếp hạng ${comment.rating } 5 sao">
											<span style="width: ${comment.rating*20}%">Được xếp
												hạng <strong class="rating">${comment.rating }</strong> 5
												sao
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
										name="rating" id="rating" required="" style="display: none;">
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
									<textarea id="comment" name="comment" cols="45" rows="8"
										required=""></textarea>
								</p>
								<p class="form-submit">
									<input name="submit" type="submit" id="submit" class="submit"
										value="Gửi đi"> <input type="hidden"
										name="comment_post_ID" value="804" id="comment_post_ID">
									<input type="hidden" name="comment_parent" id="comment_parent"
										value="0">
								</p>
								<input type="hidden" name="nameProduct" id="nameProductInForm"
									value="${productByName.nameProduct }">
							</form:form>

						</div>
					</c:if>
					<c:if test="${userComment>0 }">
						<h1 id="reply-title" class="comment-reply-title">Cảm ơn bạn
							đã đánh giá!</h1>
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
							Bạn phải <a href="${pageContext.request.contextPath}/tai-khoan">đăng
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