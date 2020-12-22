<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Order Info</title>
	<meta name="keywords" content="PetMart">
	<meta name="description" content="Order Info - PetMart">
	<meta name="author" content="PetMart">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<base th:replace="shopper/fragments/common :: base">
	<link rel="shortcut icon" href="favicon.ico">
	<link rel="stylesheet" type="text/css"    href="css/theme.css">
</head>
<body>

<!-- header -->
<header th:replace="shopper/fragments/header"></header>

<div class="tt-breadcrumb">
	<div class="container">
		<ul>
			<li><a href="/index">Home</a></li>
			<li>Account</li>
		</ul>
	</div>
</div>
<div id="tt-pageContent">
	<div class="container-indent">
		<div class="container container-fluid-custom-mobile-padding">
			<h1 class="tt-title-subpages noborder">ACCOUNT</h1>
			<div class="tt-shopping-layout">
				<h2 class="tt-title">ORDER #001</h2>
				<a href="account.html" class="tt-link-back">
					<i class="icon-e-19"></i> RETURN TO ACCOUNT PAGE
				</a>
				<div class="tt-data">November 20, 2016</div>
				<div class="tt-wrapper">
					<div class="tt-table-responsive">
						<table class="tt-table-shop-03">
							<thead>
								<tr>
									<th>PRODUCT</th>
									<th>PRICE</th>
									<th>QUANTITY</th>
									<th>TOTAL</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>Lorem ipsum dolor sit amet conse ctetur </td>
									<td>$100456</td>
									<td>1</td>
									<td>$100456</td>
								</tr>
								<tr>
									<td>Ut enim ad minim veniam, quis nostrud </td>
									<td>$100</td>
									<td>1</td>
									<td>$100</td>
								</tr>
								<tr>
									<td>Eexercitation ullamco laboris nisi ut aliquip ex ea </td>
									<td>$100</td>
									<td>1</td>
									<td>$100</td>
								</tr>
								<tr>
									<td>Commodo consequat</td>
									<td>$100</td>
									<td>1</td>
									<td>$100</td>
								</tr>
								<tr>
									<td colspan="3"><strong>SUBTOTAL</strong></td>
									<td>$300</td>
								</tr>
								<tr>
									<td colspan="3"><strong>INTERNATIONAL SHIPPING</strong></td>
									<td>$18</td>
								</tr>
								<tr>
									<td colspan="3"><strong>TOTAL</strong></td>
									<td><strong>$45</strong></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<div class="tt-wrapper">
					<div class="tt-shop-info">
						<div class="tt-item">
							<h6 class="tt-title">BILLING ADDRESS:</h6>
							<div class="tt-description">
								<strong>Payment status: pendibg</strong>
								<p>
									Ut enim ad minim veniam, quis nostrud
									Eexercitation ullamco laboris nisi ut aliquip ex ea
									Commodo consequat
								</p>
							</div>
						</div>
						<div class="tt-item">
							<h6 class="tt-title">SHIPPING ADDRESS:</h6>
							<div class="tt-description">
								<strong><a href="javascript:">Payment status: pendibg</a></strong>
								<p>
									Ut enim ad minim veniam, quis nostrud
									Eexercitation ullamco laboris nisi ut aliquip ex ea
									Commodo consequat
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- footer -->
<footer th:replace="shopper/fragments/footer"></footer>

<!-- modal -->
<div th:replace="shopper/fragments/modal :: addToCart"></div>
<div th:replace="shopper/fragments/modal :: quickView"></div>
<div th:replace="shopper/fragments/modal :: videoProduct"></div>
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
</body>
</html>