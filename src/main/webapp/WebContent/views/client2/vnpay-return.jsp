<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <meta name="description" content="">
        <meta name="author" content="">
        <title>VNPAY RESPONSE</title>
        <!-- Bootstrap core CSS -->
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet"/>
        <!-- Custom styles for this template -->
<!--         <link href="assets/jumbotron-narrow.css" rel="stylesheet">  -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    </head>
    <body>
        <!--Begin display -->
        <div class="container">
            <div class="header clearfix">
                <h3 class="text-muted">VNPAY RESPONSE</h3>
            </div>
            <div class="table-responsive">
                <div class="form-group">
                    <label >Mã đơn hàng:</label>
<!--                     <label><%=request.getParameter("vnp_TxnRef")%></label> -->
                </div>    
                <div class="form-group">
                    <label >Số tiền:</label>
<!--                     <label><%=request.getParameter("vnp_Amount")%></label> -->
                </div>  
                <div class="form-group">
                    <label >Nội dung thanh toán:</label>
<!--                     <label><%=request.getParameter("vnp_OrderInfo")%></label> -->
                </div> 
                <div class="form-group">
                    <label >Mã phản hồi (vnp_ResponseCode):</label>
<!--                     <label><%=request.getParameter("vnp_ResponseCode")%></label> -->
                </div> 
                <div class="form-group">
                    <label >Mã GD Tại VNPAY:</label>
<!--                     <label><%=request.getParameter("vnp_TransactionNo")%></label> -->
                </div> 
                <div class="form-group">
                    <label >Mã Ngân hàng:</label>
<!--                     <label><%=request.getParameter("vnp_BankCode")%></label> -->
                </div> 
                <div class="form-group">
                    <label >Thời gian thanh toán:</label>
<!--                     <label><%=request.getParameter("vnp_PayDate")%></label> -->
                </div> 
                <div class="form-group">
                    <label >Kết quả:</label>
                    <label>
                    </label>
                </div> 
            </div>
            <p>
                &nbsp;
            </p>
            <footer class="footer">
                <p>&copy; PetMart 2020</p>
            </footer>
        </div>  
    </body>
</html>