<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Admin || Employee Manager</title>
	<base href="${pageContext.servletContext.contextPath}/">
	<!-- Tell the browser to be responsive to screen width -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- Font Awesome -->
	<link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
	<!-- Ionicons -->
	<link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
	<!-- Theme style -->
	<link rel="stylesheet" href="dist/css/adminlte.min.css">
	<!-- Google Font: Source Sans Pro -->
	<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
	<!--Custo CSS-->
	<link rel="stylesheet" href="dist/css/custom.css">
	<link rel="stylesheet" href="css/employee.css">
</head>

<body class="hold-transition sidebar-mini">
	<div class="wrapper">
		<!-- Navbar -->
		<%@ include file="/WebContent/views/header_nav_admin.jsp" %>
		<!-- /.navbar -->

		<!-- Main Sidebar Container -->
		<%@ include file="/WebContent/views/aside_nav_admin.jsp" %>
		<!-- End aside -->

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1>NHÂN VIÊN</h1>
						</div>
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="index.html">Trang
										chủ</a></li>
								<li class="breadcrumb-item active">Nhân viên</li>
							</ol>
						</div>
					</div>
				</div>
				<!-- /.container-fluid -->
			</section>

			<!-- Main content -->
			<section class="content">
				<div class="container-fluid">
					<div class="row">
						<div class="col-12">
							<div class="card">
								<div class="card-header">
									<h3 class="card-title">
										<i class="far fa-chart-bar"></i> Quản lý nhân viên
									</h3>
								</div>
								<!-- /.card-header -->
								<div class="form-group col-2">
									<label for="cbo_role">Lọc</label> <select
										id="cbo_role" class="form-control" style="">
										<option value="searchResult" id="searchResult"
											style="display: ${search_display };">Kết quả tìm
											kiếm</option>
										<option value="1">Tất cả người dùng</option>
										<option value="2">Thành viên</option>
										<option value="3" title="Nhân viên & Quản trị viên">Nhân
											viên & QTV</option>
										<option value="4" style="background: #ff4d4d; color: #fff;">Bị
											chặn</option>
									</select> <span id="sortValue2" style="display: none;">${sortValue }</span>
								</div>
								<div class="card-body">
									<div class="main-table table-responsive-xl">
										<table class="table table-hover">
											<thead>
												<tr class="bg-info">
													<th scope="col" style="width: 60px;">Ảnh</th>
													<th scope="col" style="width: 200px;">Họ và tên</th>
													<th scope="col" style="width: 100px;">Giới tính</th>
													<th scope="col" style="width: 100px;">Email</th>
													<th scope="col" style="width: 50px;">Điện thoại</th>
													<th scope="col" style="width: 200px;">Địa chỉ</th>
													<th scope="col" style="width: 80px;">Hành động</th>
												</tr>
											</thead>
												<tbody>
													<c:forEach var="user" items="${listAccount }">
													<tr>
														<td>
															<img class="img-fluid" src="${user.getImagePath() }" alt="" style="max-width: 70px; max-height: 70px;">
														</td>
														<td>
															<div class="td__center">${user.getFullName() }</div>
														</td>
														<td>
															<div class="td__center">${user.getDisplayGender() }</div>
														</td>
														<td>
															<div class="td__center">${user.getEmail() }</div>
														</td>
														<td>
															<div class="td__center">${user.getPhone() }</div>
														</td>
														<td>
															<div class="td__center">${user.getAddress() }</div>
														</td>
														<td>
															<form action="admin/UserManagement/ChangeRole" method="post">
																<div class="dropdown" style="float: left; margin-top: 0.10em">
																	<input type="hidden" name="u_username" value="${user.getUsername() }">
																	<select name="quyen" style="height: 34px;width: 113px;">
																		<c:if test="${user.getRole().getId() == 'ROLE_STAFF' }">
																		<option value="ROLE_STAFF" selected="selected">Nhân viên</option>
																		</c:if>
																		<c:if test="${user.getRole().getId() ne 'ROLE_STAFF' }">
																		<option value="ROLE_STAFF">Nhân viên</option>
																		</c:if>
																		<c:if test="${user.getRole().getId() == 'ROLE_ADMIN' }">
																		<option value="ROLE_ADMIN" selected="selected">Admin</option>
																		</c:if>
																		<c:if test="${user.getRole().getId() ne 'ROLE_ADMIN' }">
																		<option value="ROLE_ADMIN" >Admin</option>
																		</c:if>
																		<c:if test="${user.getRole().getId() == 'ROLE_MEMBER' }">
																		<option value="ROLE_MEMBER" selected="selected">Khách hàng</option>
																		</c:if>
																		<c:if test="${user.getRole().getId() ne 'ROLE_MEMBER' }">
																		<option value="ROLE_MEMBER">Khách hàng</option>
																		</c:if>
																	</select>
																</div>
																<div style="float: left; margin-top: 0.2em;">
																	<button style="height: 34px;" type="submit" class="btn btn-success">Lưu</button>
																</div>
															</form>
															<form action="admin/UserManagement/${action}" method="post">
																<div style="float: left;margin-left: 0.2em;margin-top: 0.2em;height: 34px;">
																	<input type="hidden" name="u_username" value="${user.getUsername() }">
																	<button  style="height: 34px;" type="submit" class="btn btn-danger">${nameButton3 }</button>
																</div>
															</form>
														</td>
													</tr>
													</c:forEach>
												</tbody>
										</table>
										<hr>
									</div>
									<!--End Table-->
									<div class="row">
										<div class="col-12 col-sm-6 col-md-3"></div>
										<div class="col-12 col-sm-6 col-md-3"></div>
										<div class="col-12 col-sm-6 col-md-3"></div>
										<div class="col-12 col-sm-6 col-md-3">
											<div class="pagination-main" style="padding-left: 30px;">
												<nav aria-label="Page navigation example">
													<ul class="pagination">
														<c:forEach begin="1" end="${totalPage }" var="i">
															<li class="page-item"><a class="page-link"
																href="admin/UserManagement?targetPage=${i }">${i }</a>
														</c:forEach>
													</ul>
												</nav>
											</div>
											<!-- End Page Navigation -->
										</div>
									</div>
								</div>
								<!-- /.card-body -->
							</div>
							<!-- /.card -->
						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.row -->
			<!-- /.container-fluid -->
			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->

		<footer class="main-footer">
		<div class="float-right d-none d-sm-block">
			<b>Version</b> 1.0.0
		</div>
		<strong>Copyright &copy; 2020 <a href="http://adminlte.io">Petmark
		</a>.
		</strong> All rights reserved.
			<input type="hidden" id="active" value="Nhân viên">
		</footer>

		<!-- Control Sidebar -->
		<aside class="control-sidebar control-sidebar-dark">
			<!-- Control sidebar content goes here -->
		</aside>
		<!-- /.control-sidebar -->
	</div>
	<!-- ./wrapper -->

	<!-- jQuery -->
	<script src="plugins/jquery/jquery.min.js"></script>
	<!-- Bootstrap 4 -->
	<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- AdminLTE App -->
	<script src="dist/js/adminlte.min.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="dist/js/demo.js"></script>
	<script src="js/active.js"></script>
	<script type="text/javascript" src="Script/QLND.js"></script>
	<script>
		b();
		function b(){
			let nav = document.getElementsByClassName("nav-aside");
			let p = document.getElementsByClassName("nav-p");
			let active = document.getElementById("active").value;
			console.log(nav);
			console.log(p);
			for(let i=0; i<nav.length; i++){
				console.log(nav[i].innerText);
				if( nav[i].innerText == active){
					console.log(i);
					nav[i].classList.add("active");
				}
			}
		}
	</script>
</body>

</html>