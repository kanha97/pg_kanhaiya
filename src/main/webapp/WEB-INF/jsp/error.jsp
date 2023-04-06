<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <style>
        th {
            white-space: nowrap;
        }
    </style>
    <title>SFA Admin Panel | Error</title>
    <!-- App favicon -->
    <link rel="icon" href="${pageContext.request.contextPath }/resources/images/logo.png">
    <!--Morris Chart CSS -->
    <link href="${pageContext.request.contextPath }/resources/plugins/datatables/jquery.dataTables.min.css"
          rel="stylesheet" type="text/css"/>
    <link href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="${pageContext.request.contextPath }/resources/plugins/select2/select2.css" rel="stylesheet"
          type="text/css"/>
    <link href="${pageContext.request.contextPath }/resources/css/core.css" rel="stylesheet" type="text/css"/>
    <link href="${pageContext.request.contextPath }/resources/css/components.css" rel="stylesheet" type="text/css"/>
    <link href="${pageContext.request.contextPath }/resources/css/icons.css" rel="stylesheet" type="text/css"/>
    <link href="${pageContext.request.contextPath }/resources/css/pages.css" rel="stylesheet" type="text/css"/>
    <link href="${pageContext.request.contextPath }/resources/css/responsive.css" rel="stylesheet" type="text/css"/>
    <link href="${pageContext.request.contextPath }/resources/plugins/sweetalert/dist/sweetalert.css" rel="stylesheet"
          type="text/css">
    <script src="${pageContext.request.contextPath }/resources/js/modernizr.min.js"></script>
</head>

<body class="fixed-left">
<!-- Begin page -->
<div id="wrapper">
    <jsp:include page="topbar.jsp"></jsp:include>
    <jsp:include page="sidebar.jsp"></jsp:include>
    <!-- ============================================================== -->
    <!-- Start right Content here -->
    <!-- ============================================================== -->
    <div class="content-page">
                <!-- Start content -->
                <div class="content">
                    <div class="container">

                        <div class="wrapper-page">
							<div class="ex-page-content text-center">
								<div class="text-error">
									<i class="ti-face-sad text-primary"></i>
									<br>
									<span class="text-primary">${code}</span>
								</div>
								<h2>Who0ps! Something went wrong</h2>
								<br>
								<p class="text-muted">
									${message}
								</p>
								<br>
								<a href="${pageContext.request.contextPath}/admin/home"><button type="button" class="btn btn-primary waves-effect waves-light"> Return Home</button></a>
							</div>
						</div>
						<!-- end wrapper page -->

                    </div> <!-- container -->
                               
                </div> <!-- content -->

				<jsp:include page="footer.jsp"></jsp:include>
            </div>
</div>
<jsp:include page="footer.jsp"></jsp:include>
<script>
    var resizefunc = [];
</script>
<script>
    function uploading(){
        swal({
            title : "Uploading",
            text : "Uploading Beat Plans",
            type : "info",
            showCancelButton: false, 
            showConfirmButton: false
        });    
    }
</script>
<!-- jQuery  -->
<script src="${pageContext.request.contextPath }/resources/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/detect.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/fastclick.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/jquery.slimscroll.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/jquery.blockUI.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/waves.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/wow.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/jquery.nicescroll.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/jquery.scrollTo.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/plugins/peity/jquery.peity.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/plugins/select2/select2.min.js"
        type="text/javascript"></script>
<!-- jQuery  -->
<script src="${pageContext.request.contextPath }/resources/plugins/waypoints/lib/jquery.waypoints.js"></script>
<script src="${pageContext.request.contextPath }/resources/plugins/counterup/jquery.counterup.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/plugins/raphael/raphael-min.js"></script>
<script src="${pageContext.request.contextPath }/resources/plugins/jquery-knob/jquery.knob.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/jquery.core.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/jquery.app.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/jquery.spring-friendly.js"></script>
<script src="${pageContext.request.contextPath }/resources/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/plugins/datatables/dataTables.bootstrap.js"></script>
<script src="${pageContext.request.contextPath }/resources/plugins/bootstrap-filestyle/src/bootstrap-filestyle.min.js"
     type="text/javascript"></script>
<script type="text/javascript"
        src="${pageContext.request.contextPath }/resources/plugins/parsleyjs/dist/parsley.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/plugins/sweetalert/dist/sweetalert.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/pages/jquery.sweet-alert.init.js"></script>
</body>

</html>