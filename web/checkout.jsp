<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Cổng thanh toán VNPAY</title>
        <!-- Bootstrap core CSS -->
        <link href="/Mind_Bridge/assets/bootstrap.min.css" rel="stylesheet"/>
        <!-- Custom styles for this template -->
        <link href="/Mind_Bridge/assets/jumbotron-narrow.css" rel="stylesheet">      
        <script src="/Mind_Bridge/assets/jquery-1.11.3.min.js"></script>
    </head>

    <body>

         <div class="container">
           <div class="header clearfix">

                <h3 class="text-muted">VNPAY</h3>
            </div>
                <div class="form-group">
                    <button onclick="pay()">Giao dịch thanh toán</button><br>
                </div>

            <p>
                &nbsp;
            </p>
            <footer class="footer">
                <p>&copy; VNPAY 2020</p>
            </footer>
        </div> 
        <script>
             function pay() {
              window.location.href = "/Mind_Bridge/vnpay_pay.jsp";
            }
            function querydr() {
              window.location.href = "/Mind_Bridge/vnpay_querydr.jsp";
            }
             function refund() {
              window.location.href = "/Mind_Bridge/vnpay_refund.jsp";
            }
        </script>
    </body>
</html>