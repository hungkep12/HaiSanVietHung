<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!-- tích hợp JSTL vào trong JSP -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<div class="autocomplete-suggestions" style="display: block;">
	<c:forEach var="productSearched" items="${productSearched }">
		<a href="${pageContext.request.contextPath}/san-pham/${productSearched.nameProduct }">
			<div class="autocomplete-suggestion" data-index="0">
				<img class="search-image"
					src="${pageContext.request.contextPath}/${productSearched.imageProducts[1].URL }"
					width="40px" height="40px">
				<div class="search-name">${productSearched.nameProduct }</div>
				<span class="search-price"><span
					class="woocommerce-Price-amount amount"><fmt:setLocale
							value="vn" /> <fmt:formatNumber
							value="${productSearched.price }" type="currency" /></span><span></span></span>
			</div>
		</a>
	</c:forEach>
</div>