<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
	<meta charset="utf-8">
	<title>PetMart - Trang chủ</title>
	<meta name="keywords" content="PetMart">
	<meta name="description" content="PetMart">
	<meta name="author" content="PetMart">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<base th:replace="shopper/fragments/common :: base">
	<link rel="shortcut icon" href="favicon.ico">
	<link rel="stylesheet" type="text/css"    href="css/theme.css">
	<link rel="stylesheet" type="text/css"    href="css/toastr.min.css">
</head>
<body>

<!-- header -->
<header th:replace="shopper/fragments/header"></header>

<div id="tt-pageContent">
	<div class="container-indent nomargin">
		<div class="container-fluid">
			<div class="tt-slick-slider arrow-slick-main">
				<div class="tt-slick-main-item">
					<img src="images/slides/slick-slider/banner_1.jpg" alt="">
					<div class="tt-description tt-point-h-c">
						<div class="tt-description-wrapper">
							<!-- <div class="tt-title-small"><span class="tt-base-color">Multipurpose</span></div>
							<div class="tt-title-large"><span class="tt-white-color">Premium<br>Html Template</span></div> -->
							<div class="tt-title-small"><span class="tt-base-color"></span></div>
							<div class="tt-title-large"><span class="tt-white-color"><br></span></div>

							<a href="/product-listing" class="btn btn-xl">XEM NGAY!</a>
						</div>
					</div>
				</div>
				<div class="tt-slick-main-item">
					<img src="images/slides/slick-slider/banner_2.jpg" alt="">
					<div class="tt-description tt-point-h-r">
						<div class="tt-description-wrapper">
							<div class="tt-title-small"><span class="tt-base-color">Ready To</span></div>
							<div class="tt-title-large"><span class="tt-white-color">PetMart<br></span></div>

							<a href="/product-listing" class="btn btn-xl">XEM NGAY!</a>
						</div>
					</div>
				</div>
				<div class="tt-slick-main-item">
					<img src="images/slides/slick-slider/banner_3.jpg" alt="">
					<div class="tt-description tt-point-h-r">
						<div class="tt-description-wrapper">
							<div class="tt-title-small"><span class="tt-base-color">PetMart</span></div>

							<a href="/product-listing" class="btn btn-xl">XEM NGAY!</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container-indent0" style="display: none;">
		<div class="container">
			<div class="row flex-sm-row-reverse tt-layout-promo-box">
				<div class="col-sm-12 col-md-6">
					<div class="row">
						<div class="col-sm-6">
							<a href="/product-listing" class="tt-promo-box tt-one-child hover-type-2">
								<img src="images/loader.svg" data-src="images/promo/index04-promo-img-02.jpg" alt="">
								<div class="tt-description">
									<div class="tt-description-wrapper">
										<div class="tt-background"></div>
										<div class="tt-title-small">Dog</div>
									</div>
								</div>
							</a>
						</div>
						<div class="col-sm-6">
							<a href="/product-listing" class="tt-promo-box tt-one-child hover-type-2">
								<img src="images/loader.svg" data-src="images/promo/index04-promo-img-03.jpg" alt="">
								<div class="tt-description">
									<div class="tt-description-wrapper">
										<div class="tt-background"></div>
										<div class="tt-title-small">Cat</div>
									</div>
								</div>
							</a>
						</div>
						<div class="col-sm-12">
							<a href="/product-listing" class="tt-promo-box tt-one-child">
								<img src="images/loader.svg" data-src="images/promo/index04-promo-img-04.jpg" alt="">
								<div class="tt-description">
									<div class="tt-description-wrapper">
										<div class="tt-background"></div>
										<div class="tt-title-small">READY TO</div>
										<div class="tt-title-large">PetMart</div>
									</div>
								</div>
							</a>
						</div>
					</div>
				</div>
				<div class="col-sm-12 col-md-6">
					<a href="/product-listing" class="tt-promo-box">
						<img src="images/loader.svg" data-src="images/promo/index04-promo-img-01.jpg" alt="">
						<div class="tt-description">
							<div class="tt-description-wrapper">
								<div class="tt-background"></div>
								<div class="tt-title-small">MULTI-PURPOSE</div>
								<div class="tt-title-large">PetMart</div>
							</div>
						</div>
					</a>
				</div>
			</div>
		</div>
	</div>
	<div class="container-indent">
		<div class="container container-fluid-custom-mobile-padding">
			<div class="tt-block-title">
				<h1 class="tt-title">PHỤ KIỆN MỚI</h1>
				<div class="tt-description">CHÀO ĐÔNG 2020</div>
			</div>
			<div class="row tt-layout-product-item">
				<div th:each ="product : ${products}" class="col-6 col-md-4 col-lg-3">
					<div class="tt-product thumbprod-center">
						<div class="tt-image-box">
<!-- 							<a href="javascript:" class="tt-btn-qui	ckview" data-toggle="modal" data-target="#ModalquickView"	data-tooltip="Xem Trước" data-tposition="left"></a> -->
							<a href="javascript:" class="tt-btn-wishlist" data-tooltip="Yêu Thích" th:if="${isSignedIn}" th:classappend="${product.isWishList} ? 'active' : ''" data-tposition="left"></a>
							<input class="productBoxId" type="hidden" th:value="${product.id}">
							<a th:href="@{/product/} + ${product.id}">
								<span class="tt-img"><img src="images/loader.svg" th:data-src="${product.primaryImage()}" alt=""></span>
								<span class="tt-img-roll-over" th:each="image,iter : ${product.otherImages()}">
									<img th:if="${iter.index==0}" src="images/loader.svg" th:data-src="${image}" alt="">
								</span>
								<span class="tt-label-location">
									<span class="tt-label-new d-none" th:text="${product.status}">Mới</span>
								</span>
							</a>
						</div>
						<div class="tt-description">
							<div class="tt-row">
								<ul class="tt-add-info">
									<li><a href="javascript:"><br></a></li>
								</ul>
							</div>
							<h2 class="tt-title">
								<a th:href="@{/product/} + ${product.id}" th:text="${product.brand.name + ' ' + product.name + ' - ' + product.versionName}">Name</a>
							</h2>
							<div class="tt-price" th:text="${product.formatPrice()}">
								price
							</div>
							<div class="tt-product-inside-hover">

								<div class="tt-row-btn">
									<a href="javascript:" class="tt-btn-quickview" data-toggle="modal" data-target="#ModalquickView"></a>
									<a href="javascript:" class="tt-btn-wishlist"></a>
									<a href="javascript:" class="tt-btn-compare"></a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="text-center tt_product_showmore">
				<a th:href="@{/product-listing}" class="btn btn-border">XEM THÊM</a>
			</div>
		</div>
	</div>
	<div class="container-indent">
		<div class="container">
			<div class="row tt-layout-promo-box">
				<div class="col-md-6">
					<a href="/product-listing" class="tt-promo-box tt-one-child">
						<img src="images/loader.svg" data-src="images/promo/promo_1.jpg" alt="">
						<div class="tt-description">
							<div class="tt-description-wrapper">
								<div class="tt-background"></div>
								<div class="tt-title-small">PHỤ KIỆN MỚI:</div>
								<div class="tt-title-large">PetMart</div>
							</div>
						</div>
					</a>
				</div>
				<div class="col-md-6">
					<a href="/product-listing" class="tt-promo-box tt-one-child">
						<img src="images/loader.svg" data-src="images/promo/promo_3.jpg" alt="">
						<div class="tt-description">
							<div class="tt-description-wrapper">
								<div class="tt-background"></div>
								<div class="tt-title-small">MÙA ĐÔNG ĐÃ TỚI</div>
								<div class="tt-title-large">GIẢM GIÁ TỚI <span class="tt-base-color">40%</span></div>
							</div>
						</div>
					</a>
				</div>
			</div>
		</div>
	</div>
	<div class="container-indent">
		<div class="container">
			<div class="row">
				<div class="col-sm-6 col-md-4">
					<h6 class="tt-title-sub">PHỤ KIỆN MỚI</h6>
					<div class="tt-layout-vertical-listing">
						<div class="tt-item" th:each ="product : ${newProducts}">
							<div class="tt-layout-vertical">
								<div class="tt-img">
									<a th:href="@{/product/} + ${product.id}">
										<span class="tt-img-default"><img src="images/loader.svg" th:data-src="${product.primaryImage()}" alt=""></span>
										<span class="tt-img-roll-over" th:each="image,iter : ${product.otherImages()}">
											<img th:if="${iter.index==0}" src="images/loader.svg" th:data-src="${image}" alt="">
										</span>
									</a>
								</div>
								<div class="tt-description">
									<ul class="tt-add-info">
										<li><a href="javascript:">PetMart</a></li>
									</ul>
									<h6 class="tt-title"><a th:href="@{/product/} + ${product.id}" th:text="${product.name2()}">name</a></h6>
									<div class="tt-price" th:text="${product.formatPrice()}">
										price
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="divider visible-xs"></div>
				<div class="col-sm-6 col-md-4">
					<h6 class="tt-title-sub"></h6>
					<div class="tt-layout-vertical-listing">
						<div class="tt-item" th:each ="product : ${specialProducts}">
							<div class="tt-layout-vertical">
								<div class="tt-img">
									<a th:href="@{/product/} + ${product.id}">
										<span class="tt-img-default"><img src="images/loader.svg" th:data-src="${product.primaryImage()}" alt=""></span>
										<span class="tt-img-roll-over" th:each="image,iter : ${product.otherImages()}">
											<img th:if="${iter.index==0}" src="images/loader.svg" th:data-src="${image}" alt="">
										</span>
									</a>
								</div>
								<div class="tt-description">
									<ul class="tt-add-info">
										<li><a href="javascript:">PetMart</a></li>
									</ul>
									<h6 class="tt-title"><a th:href="@{/product/} + ${product.id}" th:text="${product.name2()}">name</a></h6>
									<div class="tt-price" th:text="${product.formatPrice()}">
										price
									</div>
								</div>
							</div>
						</div>
						
					</div>
				</div>
				<div class="divider visible-sm visible-xs"></div>
				<div class="col-sm-6 col-md-4">
					<h6 class="tt-title-sub"></h6>
					<div class="tt-layout-vertical-listing">
						<div class="tt-item" th:each ="product : ${featuredProducts}">
							<div class="tt-layout-vertical">
								<div class="tt-img">
									<a th:href="@{/product/} + ${product.id}">
										<span class="tt-img-default"><img src="images/loader.svg" th:data-src="${product.primaryImage()}" alt=""></span>
										<span class="tt-img-roll-over" th:each="image,iter : ${product.otherImages()}">
											<img th:if="${iter.index==0}" src="images/loader.svg" th:data-src="${image}" alt="">
										</span>
									</a>
								</div>
								<div class="tt-description">
									<ul class="tt-add-info">
										<li><a href="javascript:">PetMart</a></li>
									</ul>
									<h6 class="tt-title"><a th:href="@{/product/} + ${product.id}" th:text="${product.name2()}">name</a></h6>
									<div class="tt-price" th:text="${product.formatPrice()}">
										price
									</div>
								</div>
							</div>
						</div>
						
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container-indent">
		<div class="container container-fluid-custom-mobile-padding">
			<div class="tt-block-title">
				<h2 class="tt-title">NHÃN HIỆU</h2>
				<div class="tt-description">NỔI TIẾNG ĐƯỢC BÁN TRONG CỬA HÀNG</div>
			</div>
			<div class="row tt-img-box-listing">
				<div class="col-6 col-sm-4 col-md-3">
                	<a href="javascript:" class="tt-img-box">
                		<img src="images/logoshoe/nike_logo.png"  alt="">
                	</a>
				</div>
				<div class="col-6 col-sm-4 col-md-3">
					<a href="javascript:" class="tt-img-box">
                		<img src="images/logoshoe/Converse-Logo.jpg" alt="">
                	</a>
				</div>
				<div class="col-6 col-sm-4 col-md-3">
					<a href="javascript:" class="tt-img-box">
                		<img src="images/logoshoe/logo_adidas.jpg" alt="">
                	</a>
				</div>
				<div class="col-6 col-sm-4 col-md-3">
					<a href="javascript:" class="tt-img-box">
                		<img src="images/logoshoe/alacoste-Logo.jpg"  alt="">
                	</a>
				</div>
				<div class="col-6 col-sm-4 col-md-3">
					<a href="javascript:" class="tt-img-box">
                		<img src="images/logoshoe/logo_newbalan.jpg"  alt="">
                	</a>
				</div>
				<div class="col-6 col-sm-4 col-md-3">
					<a href="javascript:" class="tt-img-box">
                		<img src="images/logoshoe/logo_lv.jpg"  alt="">
                	</a>
				</div>
				<div class="col-6 col-sm-4 col-md-3">
					<a href="javascript:" class="tt-img-box">
                		<img src="images/logoshoe/puma-logo1.jpg"  alt="">
                	</a>
				</div>
				<div class="col-6 col-sm-4 col-md-3">
					<a href="javascript:" class="tt-img-box">
                		<img src="images/logoshoe/logo_reebok.jpg"  alt="">
                	</a>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- footer -->
<footer th:replace="shopper/fragments/footer"></footer>

<!-- modal -->
<div th:replace="shopper/fragments/modal :: addToCart"></div>
<!-- <div id="quickViewContainer"></div> -->
<div th:replace="shopper/fragments/modal :: quickView"></div>

<script src="external/jquery/jquery.min.js"></script>
<script src="external/bootstrap/js/bootstrap.min.js"></script>
<script src="external/slick/slick.min.js"></script>
<script src="external/perfect-scrollbar/perfect-scrollbar.min.js"></script>
<script src="external/panelmenu/panelmenu.js"></script>
<script src="external/instafeed/instafeed.min.js"></script>
<script src="external/rs-plugin/js/jquery.themepunch.tools.min.js"></script>
<script src="external/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
<script src="external/countdown/jquery.plugin.min.js"></script>
<script src="external/countdown/jquery.countdown.min.js"></script>
<script src="external/lazyLoad/lazyload.min.js"></script>
<script src="js/main.js"></script>
<!-- form validation and sending to mail -->
<script src="external/form/jquery.form.js"></script>
<script src="external/form/jquery.validate.min.js"></script>
<script src="external/form/jquery.form-init.js"></script>
<!-- custom -->
<script src="js/toastr.min.js" type="text/javascript"></script>
<script src="js/header.js" type="text/javascript"></script>
<script src="js/product-box.js" type="text/javascript"></script>
</body>
</html>