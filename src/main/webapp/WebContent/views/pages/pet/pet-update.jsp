
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Admin || Pet Manger</title>
    <base href="${pageContext.servletContext.contextPath}/">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Font Awesome -->

    <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet"
          href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- overlayScrollbars -->
    <link rel="stylesheet"
          href="plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="dist/css/adminlte.min.css">
    <!-- Google Font: Source Sans Pro -->
    <link
            href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700"
            rel="stylesheet">
    <link rel="stylesheet" href="dist/css/custom.css">
    <link rel="stylesheet" href="css/employee.css">



</head>

<body class="hold-transition sidebar-mini layout-fixed">
<!-- Site wrapper -->
<div class="wrapper">
    <!-- Navbar -->
    <%@ include file="/WebContent/views/header_nav_admin.jsp"%>
    <!-- /.navbar -->

    <!-- Main Sidebar Container -->
    <%@ include file="/WebContent/views/aside_nav_admin.jsp"%>
    <!-- End aside -->

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1>THÚ CƯNG</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item">
                                <a href="index.html">Trang chủ</a>
                            </li>
                            <li class="breadcrumb-item active">Thú cưng</li>
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
                                    <i class="fas fa-paw"></i> Thông tin chi tiết thú cưng
                                </h3>
                            </div>
                            <!-- /.card-header -->
                            <div class="card-body">
                                <!-- Default box -->

                                <!--Div form Update-->
                                <div id="form-disable-update"
                                     style="max-width: 95%; margin: auto;">
                                    <form action="admin/ProductManagement/UpdateProduct"
                                          method="post">
                                        <input type="hidden" name="id" id="id">
                                        <div class="form-disable-p1 float-left"
                                             style="width: 330px; margin-left: 30px; float: left;">
                                            <div class="form-group">
                                                <label for="petNameUpdate">Tên thú cưng</label>
                                                <input type="text" class="form-control" id="petNameUpdate"
                                                       name="tenThu" value="${pet.getPetName() }">
                                            </div>
                                            <div class="form-group">
                                                <label for="pet-bread-update">Giống thú cưng</label>
                                                <select name="giongThu" id="pet-bread-update" style="height: 30px; width: 100%;">
                                                <c:forEach var="category" items="${listCategory }">
                                                    <option value="${category.id }">${ category.getName()}</option>
                                                </c:forEach>
                                            </select>
                                            </div>
                                            <div class="form-group">
                                                <label for="petColor">Màu lông</label>
                                                <input type="text" class="form-control" id="petColor" name="mauLong">
                                            </div>
                                            <div class="form-group">
                                                <label for="petEyeColor">Màu mắt</label>
                                                <input type="text" class="form-control" id="petEyeColor" name="mauMat">
                                            </div>
                                        </div>
                                        <div class="form-disable-p1" style="width: 330px; margin-left: 30px; float: left;">
                                            <div class="form-group">
                                                <label for="petAgeUpdate">Tháng tuổi</label>
                                                <input type="text" class="form-control" id="petAgeUpdate" name="tuoiThu" value="${pet.getAge() }">
                                            </div>
                                            <div class="form-group">
                                                <label for="petPriceUpdate">Giá (VND)</label>
                                                <input type="text" class="form-control" id="petPriceUpdate" name="giaThu" value="${pet.getDisplayPrice(1) }">
                                            </div>
                                            <div class="form-group">
                                                <label for="pet-status-update">Trạng thái</label>
                                                <select name="trangThai" id="pet-status-update"  style="height: 30px; width: 100%;">
                                                    <c:forEach var="status" items="${listStatus }">
                                                        <option value="${status }">${status }</option>
                                                    </c:forEach>
                                            </select>
                                            </div>
                                            <div class="form-group">
                                                <label for="petAmountUpdate">Số lượng</label>
                                                <input type="text" class="form-control" id="petAmountUpdate" name="soLuong" value="${pet.getAmount() }">
                                            </div>
                                        </div>
                                        <div class="form-disable-p1" style="width: 330px; margin-left: 30px; float: left;">
                                            <div class="form-group">
                                                <label for="petInformationUpdate">Mô tả</label>
                                                <textarea class="form-control" id="petInformationUpdate" rows="2" name="moTaThu">${pet.getDescription() }</textarea>
                                            </div>
                                            <div class="custom-file mb-3">
                                                <label class="custom-file-label" for="customFile">Chọn hình ảnh</label>
                                                <input type="file" class="custom-file-input" id="customFile" name="filename">
                                            </div>
                                            <div class="custom-file mb-3">
                                                <label class="custom-file-label" for="customFile1">Chọn hình ảnh</label>
                                                <input type="file" class="custom-file-input" id="customFile1" name="filename">
                                            </div>
                                            <div class="custom-file mb-3">
                                                <label class="custom-file-label" for="customFile2">Chọn hình ảnh</label>
                                                <input type="file" class="custom-file-input" id="customFile2" name="filename">
                                            </div>
                                            <div class="custom-file mb-3">
                                                <label class="custom-file-label" for="customFile3">Chọn hình ảnh</label>
                                                <input type="file" class="custom-file-input" id="customFile3" name="filename">
                                            </div>
                                            <input type="hidden" class="form-control" id="petDateUpdate" name="ngayNhap">

                                        </div>
                                        <div>
                                            <button type="submit" class="btn btn-custon-rounded-three btn-success btn-css">
                                                <i class="fas fa-save"></i> <span> Lưu</span>
                                            </button>
                                            <button type="reset" class="btn btn-custon-rounded-three btn-warning btn-css">
                                                <i class="fas fa-backspace"></i> <span> Làm mới</span>
                                            </button>
                                            <button type="button" class="btn btn-custon-rounded-three btn-danger btn-css" onclick="hiddenFormUpdate(true)">
                                                <i class="fas fa-slash"></i> <span> Huỷ</span>
                                            </button>
                                        </div>
                                    </form>
                                    <div class="clear"></div>
                                </div>
                                <!--End Div Form Update-->

                                <div class="table-responsive-xl main-table ">
                                    <table class="table table-hover" style="margin-bottom: -1%;" id="table-js">
                                        <thead>
                                        <tr class="bg-info">
                                            <th scope="col">#</th>
                                            <th scope="col">Ảnh</th>
                                            <th scope="col">Tên thú cưng</th>
                                            <th scope="col">Giống thú</th>
                                            <th scope="col">Tuổi</th>
                                            <th scope="col">Giá</th>
                                            <th scope="col">Giá cọc</th>
                                            <th scope="col">Số lượng</th>
                                            <th scope="col">Ngày nhập</th>
                                            <th scope="col">Trạng thái</th>
                                            <th scope="col" hidden="true">Mô tả</th>
                                            <th scope="col">Hành động</th>
                                        </tr>
                                        </thead>
                                        <c:forEach var="product" items="${listProduct}">

                                            <tbody>
                                            <tr>
                                                <th scope="row">
                                                    <div class="td__center">${product.id }</div>
                                                </th>
                                                <td>
                                                    <img class="img-fluid" src="${product.getImgs().get(0).getImgAvartar() }" alt="" style="max-width: 90px; max-height: 90px;">
                                                </td>
                                                <td>
                                                    <div>
                                                        <div class="td__center">${product.petName }</div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <span hidden="true" >${product.getSpecies().getId() }</span>
                                                    <div class="td__center">${product.getSpecies().getName() }</div>
                                                </td>
                                                <td>
                                                    <div class="td__center">${product.age }</div>
                                                </td>
                                                <td>
                                                    <div class="td__center">${product.getDisplayPrice(1) }</div>
                                                </td>
                                                <td>
                                                    <div class="td__center">${product.getDisplayDeposit() }</div>
                                                </td>
                                                <td>
                                                    <div class="td__center">${product.amount}</div>
                                                </td>
                                                <td>
                                                    <div class="td__center">${product.getDate() }</div>
                                                </td>
                                                <td>
                                                    <div class="td__center">${product.status}</div>
                                                </td>
                                                <td hidden="true">${product.description}</td>
                                                <td>
                                                    <div class="td__center">
                                                        <form action="admin/ProductManagement/${action }"
                                                              method="post">
                                                            <input type='hidden' name='idthu' value='${product.id }'>
                                                            <button type="submit" class="btn btn-custon-rounded-three btn-danger">${nameButton2 }
                                                            </button>
                                                        </form>
                                                    </div>
                                                </td>
                                            </tr>
                                            </tbody>
                                        </c:forEach>
                                    </table>
                                    <hr>
                                </div>
                                <!--End Table-->
                                <div class="row">
                                    <div class="col-12 col-sm-6 col-md-3"></div>
                                    <div class="col-12 col-sm-6 col-md-3"></div>
                                    <div class="col-12 col-sm-6 col-md-3"></div>
                                    <div class="col-12 col-sm-6 col-md-3">
                                        <div class="pagination-main">
                                            <nav aria-label="Page navigation example">
                                                <ul class="pagination">
                                                    <c:forEach begin="1" end="${totalPage }" var="i">
                                                    <li class="page-item"><a class="page-link"
                                                                             href="admin/ProductManagement?targetPage=${i }">${i }</a>
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
            <!-- End container-fluid-->
        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->

    <footer class="main-footer">
        <div class="float-right d-none d-sm-block">
            <b>Version</b> 1.0.0
        </div>
        <strong>Copyright &copy; 2020 <a href="http://adminlte.io">Petmart
        </a>.
        </strong> All rights reserved.
        <input type="hidden" id="active" value="Thú cưng">
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
<script src="dist/js/pages/custom.js"></script>
<!-- Bootstrap 4 -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- overlayScrollbars -->
<script
        src="plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="dist/js/demo.js"></script>
<script src="js/active.js"></script>
<script type="text/javascript" src="Script/QLSP.js"></script>
<script>
    function hienThiFormNew(visible) {
        var hienFormNew = document.getElementById("form-disable-new");
        hienFormNew.style.display = visible ? "" : "none";
        var timKiem = document.getElementById("new-pet");
        timKiem.style.display = visible ? "none" : "block";
    }
</script>

</body>

</html>
