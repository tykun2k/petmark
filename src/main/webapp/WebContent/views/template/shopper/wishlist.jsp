<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
	<meta charset="utf-8">
	<title>Danh sách yêu thích</title>
	<meta name="keywords" content="PetMart">
	<meta name="description" content=""PetMart"">
	<meta name="author" content="wokiee">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<base th:replace="shopper/fragments/common :: base">
	<link rel="shortcut icon" href="favicon.ico">
	<link rel="stylesheet" href="css/theme.css">
	<link rel="stylesheet" href="css/toastr.min.css">
</head>
<body>

<!-- header -->
<header th:replace="shopper/fragments/header"></header>

<div class="tt-breadcrumb">
	<div class="container">
		<ul>
			<li><a href="/index">Trang chủ</a></li>
			<li>Danh sách yêu thích</li>
		</ul>
	</div>
</div>
<div id="tt-pageContent">
	<div class="container-indent">
		<div class="container">
			<h1 class="tt-title-subpages noborder">DANH SÁCH YÊU THÍCH</h1>
			<div class="tt-wishlist-box" id="js-wishlist-removeitem">
				<div class="tt-wishlist-list">
					<div class="tt-item wishlist-item" th:each ="product : ${products}">
						<div class="tt-col-description">
							<div class="tt-img">
								<img th:src="${product.primaryImage()}" alt="">
							</div>
							<div class="tt-description">
								<h2 class="tt-title"><a th:href="@{/product/} + ${product.id}" th:text="${product.name + ' - ' + product.versionName}"></a></h2>
								<div class="tt-price">
									<span class="new-price" th:text="${product.formatPrice()}">$14</span>
<!-- 									<span class="old-price">$24</span> -->
								</div>
							</div>
						</div>
						<div class="tt-col-btn">
<!-- 							<a href="javascript:" class="tt-btn-addtocart" data-toggle="modal" data-target="#modalAddToCartProduct"><i class="icon-f-39"></i>CHỌN MUA</a> -->
							<a class="btn-link" href="javascript:" data-toggle="modal" data-target="#ModalquickView"><i class="icon-f-73"></i>Xem sản phẩm</a>
							<a class="btn-link js-removeitem" th:href="${product.id}"><i class="icon-h-02"></i>Xóa khỏi danh sách</a>
						</div>
					</div>
					
				</div>
			</div>
			<div class="tt-empty-wishlist d-none" style="padding-top: 10px;">
				<div class="icon-svg">
					<svg viewBox="0 0 58 58" fill="none" xmlns="http://www.w3.org/2000/svg">
						<rect fill="white"/>
						<path d="M28.4688 13.046C28.4062 13.14 28.3281 13.2341 28.2344 13.3282C28.1719 13.391 28.0938 13.4694 28 13.5635C27.9062 13.4694 27.8125 13.391 27.7188 13.3282C27.6562 13.2341 27.5938 13.14 27.5312 13.046C26.1875 11.6973 24.6562 10.6937 22.9375 10.035C21.25 9.345 19.5156 9 17.7344 9C15.9844 9 14.2656 9.345 12.5781 10.035C10.8906 10.6937 9.375 11.6973 8.03125 13.046C6.71875 14.3632 5.71875 15.8687 5.03125 17.5624C4.34375 19.2247 4 20.981 4 22.8315C4 24.682 4.34375 26.454 5.03125 28.1477C5.71875 29.81 6.71875 31.2998 8.03125 32.6171L26.9219 51.5766C27.0781 51.702 27.25 51.7961 27.4375 51.8589C27.625 51.953 27.8125 52 28 52C28.1875 52 28.375 51.953 28.5625 51.8589C28.75 51.7961 28.9219 51.702 29.0781 51.5766L47.9688 32.6171C49.2812 31.2998 50.2812 29.81 50.9688 28.1477C51.6562 26.454 52 24.682 52 22.8315C52 20.981 51.6562 19.2247 50.9688 17.5624C50.2812 15.8687 49.2812 14.3632 47.9688 13.046C46.625 11.6973 45.1094 10.6937 43.4219 10.035C41.7344 9.345 40 9 38.2188 9C36.4688 9 34.7344 9.345 33.0156 10.035C31.3281 10.6937 29.8125 11.6973 28.4688 13.046ZM45.8594 30.453L28 48.3775L10.1406 30.453C9.14062 29.4493 8.35938 28.2888 7.79688 26.9716C7.26562 25.6543 7 24.2743 7 22.8315C7 21.3888 7.26562 20.0088 7.79688 18.6915C8.35938 17.3742 9.14062 16.198 10.1406 15.163C11.2031 14.128 12.3906 13.3439 13.7031 12.8107C15.0469 12.2775 16.4062 12.0109 17.7812 12.0109C19.1562 12.0109 20.5 12.2775 21.8125 12.8107C23.1562 13.3439 24.3438 14.128 25.375 15.163C25.625 15.4139 25.8594 15.6805 26.0781 15.9628C26.3281 16.2451 26.5469 16.543 26.7344 16.8567C27.0156 17.2644 27.4375 17.4683 28 17.4683C28.5625 17.4683 28.9844 17.2644 29.2656 16.8567C29.4531 16.543 29.6562 16.2451 29.875 15.9628C30.125 15.6805 30.375 15.4139 30.625 15.163C31.6562 14.128 32.8281 13.3439 34.1406 12.8107C35.4844 12.2775 36.8438 12.0109 38.2188 12.0109C39.5938 12.0109 40.9375 12.2775 42.25 12.8107C43.5938 13.3439 44.7969 14.128 45.8594 15.163C46.8594 16.198 47.625 17.3742 48.1562 18.6915C48.7188 20.0088 49 21.3888 49 22.8315C49 24.2743 48.7188 25.6543 48.1562 26.9716C47.625 28.2888 46.8594 29.4493 45.8594 30.453Z" fill="#C4C4C4"/>
						<rect y="45" width="64.4191" height="3" transform="rotate(-30 0 45)" fill="#191919"/>
						</svg>
				</div>
				<p>Chưa có sản phẩm yêu thích</p>
				<a href="product-listing.html" class="btn">TIẾP TỤC MUA SẮM</a>
			</div>
		</div>
	</div>
</div>

<!-- footer -->
<footer th:replace="shopper/fragments/footer"></footer>

<!-- modal -->
<div th:replace="shopper/fragments/modal :: addToCart"></div>
<div th:replace="shopper/fragments/modal :: quickView"></div>
<div th:replace="shopper/fragments/modal :: subsribeGood"></div>

<script src="external/jquery/jquery.min.js"></script>
<script src="external/bootstrap/js/bootstrap.min.js"></script>
<script src="external/slick/slick.min.js"></script>
<script src="external/panelmenu/panelmenu.js"></script>
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
<script src="js/wishlist.js" type="text/javascript"></script>
</body>
</html>