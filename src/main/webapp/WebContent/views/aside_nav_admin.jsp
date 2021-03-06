<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet" />

	<aside class="main-sidebar sidebar-light-primary elevation-4">
		<!-- Brand Logo -->
		<a href="index.html" class="brand-link"> 
			<img src="dist/img/AdminLTELogo.jpg" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
			<span class="brand-text font-weight-light"><strong>PET</strong> MARK</span>
		</a>

		<!-- Sidebar -->
		<div class="sidebar">
			<!-- Sidebar user panel (optional) -->
			<div class="user-panel mt-3 pb-3 mb-3 d-flex">
				<div class="image">
					<img src="dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
				</div>
				<div class="info">
					<a href="admin/UserManagement/show-profile" class="d-block">${account.getFullName() }</a>
				</div>
			</div>

			<!-- Sidebar Menu -->
			<nav class="mt-2">
				<ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
					<li class="nav-item has-treeview">
						<a href="LoggedInSuccessfully" class="nav-link nav-aside">
						<i class="nav-icon fas fa-home"></i>
							<p class="nav-p">Trang chủ</p>
						</a>
					</li>
					<li class="nav-header">CỬA HÀNG</li>
					<li class="nav-item">
						<a href="admin/UserManagement" class="nav-link nav-aside">
						<i class="nav-icon fas fa-users"></i>
							<p class="nav-p">Nhân viên</p>
						</a>
					</li>
					<li class="nav-item has-treeview">
						<a href="admin/ProductManagement" class="nav-link nav-aside">
						<i class="nav-icon fas fa-paw"></i>
							<p class="nav-p">Thú cưng</p>
						</a>
					</li>
					<li class="nav-item has-treeview">
						<a href="admin/SpeciesManagement" class="nav-link nav-aside">
						<i class="nav-icon fas fa-dog"></i>
							<p class="nav-p">Giống thú cưng</p>
						</a>
					</li>
					<li class="nav-item has-treeview">
						<a href="admin/AccessoriesManagement" class="nav-link nav-aside">
						<i class="nav-icon fab fa-simplybuilt"></i>
							<p class="nav-p">Phụ kiện</p>
						</a>
					</li>
					<li class="nav-item has-treeview">
						<a href="admin/CategoryManagement" class="nav-link nav-aside">
						<i class="nav-icon fab fa-bandcamp"></i>
							<p class="nav-p">Hãng phụ kiện</p>
						</a>
					</li>
					<li class="nav-header">QUẢN LÝ</li>
					<li class="nav-item has-treeview">
						<a href="admin/orders" class="nav-link nav-aside">
						<i class="nav-icon fas fa-table"></i>
							<p class="nav-p">Quản lý đơn hàng đặt qua Web</p>
						</a>
					</li>
					<li class="nav-item has-treeview">
						<a href="admin/order-app" class="nav-link nav-aside">
						<i class="nav-icon fas fa-table"></i>
							<p class="nav-p">Quản lý đơn hàng đặt qua App</p>
						</a>
					</li>
					<li class="nav-item">
						<a href="admin/deposit" class="nav-link nav-aside">
						<i class="nav-icon fas fa-receipt"></i>
							<p class="nav-p">Quản lý cọc</p>
						</a>
					</li>
					<li class="nav-header">QUẢN LÝ BLOG</li>
					<li class="nav-item has-treeview">
						<a href="admin/blog" class="nav-link nav-aside">
						<i class="nav-icon fas fa-table"></i>
							<p class="nav-p">Danh sách Blog</p>
						</a>
					</li>
					<li class="nav-header">THỐNG KÊ</li>
					<li class="nav-item">
						<a href="admin/statistical/show-statistical" class="nav-link nav-aside">
						<i class="nav-icon far fa-chart-bar"></i>
							<p class="nav-p">Thống kê</p>
						</a>
					</li>
				</ul>
			</nav>
			<!-- /.sidebar-menu -->
		</div>
		<!-- /.sidebar -->
	</aside>