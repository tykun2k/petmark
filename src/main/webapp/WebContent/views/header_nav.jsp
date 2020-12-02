<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.2/css/all.css"
	integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr"
	crossorigin="anonymous">
<header id="header" class="header">
		<div class="navigation">
			<input type="hidden" id="usernameBE" value="${account.getFullName() }" /> 
			<input type="hidden" id="is-empty" value="${isEmpty }" />
			<input type="hidden" id="hadBlog" value="1" />
			<input type="hidden" id="valuePetOrAccessori" value="${loai }" /> 
			<div class="row header__top">
				<div class="col-lg-6 col-md-8 col-sm-6 col-xs-12 ">
					<p>206 Đường Kim Mã, Quận Ba Đình, TP. Hà Nội</p>
				</div>
				<div id="row-login" class="col-lg-6 col-md-4 col-sm-6 col-xs-12 ">
					<div class="header__actions">
						<a href="login.html">Đăng nhập</a> 
						<a href="register.html">Đăng ký</a>
					</div>
				</div>
				<div id="row-logout" class="col-lg-6 col-md-4 col-sm-6 col-xs-12">
					<div class="header__actions">
						<a href="" id="hello-name"></a> <a href="">Đăng xuất</a>
					</div>
				</div>
			</div>
			<div class="container">
				<nav class="nav">
					<div class="nav__hamburger">
						<svg>
                            <use xlink:href="images/sprite.svg#icon-menu"></use>
                        </svg>
					</div>

					<div class="nav__logo">
						<a href="index.html" class="scroll-link"> PET MART </a>
					</div>

					<div class="nav__menu">
						<div class="menu__top">
							<span class="nav__category">PET MART</span> 
								<a href="index.html" class="close__toggle"> 
									<svg>
                                    	<use xlink:href="images/sprite.svg#icon-cross"></use>
                                	</svg>
								</a>
						</div>
						<ul class="nav__list">
							<li class="nav__item"><a href="index.html" class="nav__link">Trang chủ</a></li>
							<li class="nav__item"><a href="#category" class="nav__link">Sản phẩm</a></li>
							<li class="nav__item"><a href="javascript:" class="nav__link">Thú cưng</a></li>
							<li class="nav__item"><a href="javascript:" class="nav__link">Phụ kiện</a></li>		
							<li class="nav__item"><a href="javascript:" class="nav__link">Blog</a></li>
							<li class="nav__item"><a href="javascript:" class="nav__link">Liên hệ</a></li>
						</ul>
					</div>

					<div class="nav__icons">
						<div id="" style="margin-right: 1rem;">
							<input class="form-control" type="search" aria-label="Search"
								placeholder="Tìm kiếm ...">
						</div>
						<a href="javascript:" class="icon__item"> <svg
								class="icon__search">
                                <use
									xlink:href="images/sprite.svg#icon-search"></use>
                            </svg>
						</a>

						<div id="cart" class="hide">
							<a href="cart.html" class="icon__item"> <svg
									class="icon__cart">
                                    <use
										xlink:href="images/sprite.svg#icon-shopping-basket"></use>
                                </svg> <span id="cart__total">0</span>
							</a>
						</div>
					</div>
				</nav>
			</div>
		</div>
	</header>