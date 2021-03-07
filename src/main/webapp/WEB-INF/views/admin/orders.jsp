<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />

<%@ include file="/WEB-INF/views/admin/layout/include_header.jsp"%>
</head>
<body class="sb-nav-fixed">
	<%@ include file="/WEB-INF/views/admin/layout/header_and_nav.jsp"%>
	<div id="layoutSidenav_content">
		<main>
			<div class="container-fluid">
				<h1 class="mt-4">Tables</h1>
				<ol class="breadcrumb mb-4">
					<li class="breadcrumb-item"><a
						href="${pageContext.request.contextPath}/admin">Trang quản trị</a></li>
					<li class="breadcrumb-item active">Đơn hàng</li>
				</ol>
				<div class="card mb-4">
					<div class="card-body">
						DataTables is a third party plugin that is used to generate the
						demo table below. For more information about DataTables, please
						visit the <a target="_blank" href="https://datatables.net/">official
							DataTables documentation</a> .
					</div>
				</div>
				<div style="width: 100%;">
					<a
						href="${pageContext.request.contextPath}/admin/orders/processing"
						style="color: white;">
						<button type="button" class="btn btn-primary btn-lg"
							style="float: right;">Đơn hàng chưa xử lý</button>
					</a>
				</div>
				<div class="card mb-4" style="clear: both;">
					<div class="card-header">
						<i class="fas fa-table mr-1"></i> Bảng dữ liệu đơn hàng
					</div>
					<div class="card-body">
						<div class="table-responsive">
							<table class="table table-bordered" id="dataTable" width="100%"
								cellspacing="0">
								<thead>
									<tr>
										<th>Mã đơn hàng</th>
										<th>Người mua</th>
										<th>Email</th>
										<th>Ngày đặt hàng</th>
										<th>Số điện thoại</th>
										<th>Địa chỉ</th>
										<th>Trạng thái</th>
										<th>Thành tiền</th>
										<th></th>
									</tr>
								</thead>
								<tfoot>

									<tr>
										<th style="width: 100px;">Mã đơn hàng</th>
										<th>Người mua</th>
										<th>Email</th>
										<th>Ngày đặt hàng</th>
										<th>Số điện thoại</th>
										<th>Địa chỉ</th>
										<th>Trạng thái</th>
										<th>Thành tiền</th>
										<th></th>
									</tr>
								</tfoot>
								<fmt:setLocale value="vn" />
								<tbody>
									<c:forEach var="orders" items="${orders }">
										<tr>
											<td>${orders.id }</td>
											<td>${orders.fName }&nbsp;${orders.lName }</td>
											<td>${orders.email }</td>
											<td><fmt:formatDate value="${orders.dateOrder }"
													type="date" pattern="dd-MM-yyyy" /></td>
											<td>${orders.phone }</td>
											<td>${orders.address }</td>
											<td><c:if test="${orders.stt==0 }">
													<p class="text-warning"
														style="font-size: 17px; font-weight: 800;">Đang xử lý</p>
												</c:if> <c:if test="${orders.stt==1 }">
													<p class="text-success"
														style="font-size: 17px; font-weight: 800;">Đã gửi</p>
												</c:if> <c:if test="${orders.stt==2 }">
													<p class="text-danger"
														style="font-size: 17px; font-weight: 800;">Không nhận
														hàng</p>
												</c:if></td>
											<td><fmt:formatNumber value="${orders.total }"
													type="currency" /></td>
											<td><a
												href="${pageContext.request.contextPath}/admin/orders/${orders.id }"
												style="color: white;"><button type="button"
														class="btn btn-info">Xem chi tiết</button></a> <a
												href="${pageContext.request.contextPath}/admin/orders/edit/${orders.id }"
												style="color: white;"><button
														class="btn btn-success btn-sm rounded-0" type="button"
														data-toggle="tooltip" data-placement="top" title="">
														<i class="fa fa-edit"></i>Sửa
													</button> </a></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</main>
		<%@ include file="/WEB-INF/views/admin/layout/footer.jsp"%>
	</div>
	</div>
	<%@ include file="/WEB-INF/views/admin/layout/include2.jsp"%></div>
</body>
</html>
