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
    <title>SFA Admin Panel | Dashboard</title>
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
                <!-- start page title -->
                <div class="row bread-sticky">
                    <div class="col-12">
                        <ol class="breadcrumb m-0">
                            <li class="breadcrumb-item"><a href="${pageContext.request.contextPath }/home">Dashboard</a>
                            </li>
                        </ol>
                        <!-- <h4 class="page-title page-title-sticky">Add New User Details</h4> -->
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6 col-lg-3">
                        <div class="widget-bg-color-icon card-box fadeInDown animated">
                            <a href="${pageContext.request.contextPath}/admin/employee/list">
                                <div class="bg-icon bg-icon-primary pull-left">
                                    <i class="ti-user text-info"></i>
                                </div>
                            </a>
                            <div class="text-right">
                                <h3 class="text-dark"><b class="counter" id="employeeCount">0</b></h3>
                                <p class="text-muted">Total Employee</p>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>

                    <div class="col-md-6 col-lg-3">
                        <div class="widget-bg-color-icon card-box">
                            <div class="bg-icon bg-icon-primary pull-left">
                                <i class="ti-share text-info"></i>
                            </div>
                            <div class="text-right">
                                <h3 class="text-dark"><b class="counter" id="distributorCount">0</b></h3>
                                <p class="text-muted">Total Distributors</p>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>

                    <div class="col-md-6 col-lg-3">
                        <div class="widget-bg-color-icon card-box">
                            <a href="${pageContext.request.contextPath}/admin/outlet/list">
                                <div class="bg-icon bg-icon-primary pull-left">
                                    <i class="ti-home text-info"></i>
                                </div>
                            </a>
                            <div class="text-right">
                                <h3 class="text-dark"><b class="outletCount" id="outletCount">0</b></h3>
                                <p class="text-muted">Total Outlet</p>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>

                    <div class="col-md-6 col-lg-3">
                        <div class="widget-bg-color-icon card-box">
                            <a href="${pageContext.request.contextPath}/admin/beat/list">
                                <div class="bg-icon bg-icon-primary pull-left">
                                        <i class="fa fa-road text-info"></i>
                                </div>
                            </a>
                            <div class="text-right">
                                <h3 class="text-dark"><b class="counter" id=beatCount>0</b></h3>
                                <p class="text-muted">Total Beat</p>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
                
                <div class="row">
                    <div class="col-md-6 col-lg-3">
                        <div class="widget-bg-color-icon card-box fadeInDown animated">
                            <a href="${pageContext.request.contextPath}/admin/product/list">
                                <div class="bg-icon bg-icon-primary pull-left">
                                        <i class=" ti-shopping-cart text-info"></i>
                                </div>
                            </a>
                            <div class="text-right">
                                <h3 class="text-dark"><b class="counter" id="productCount">0</b></h3>
                                <p class="text-muted">Total Product</p>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>

                    <div class="col-md-6 col-lg-3">
                        <div class="widget-bg-color-icon card-box">
                            <div class="bg-icon bg-icon-primary pull-left">
                                <i class="md md-add-shopping-cart text-info"></i>
                            </div>
                            <div class="text-right">
                                <h3 class="text-dark"><b class="counter" id="brandCount">0</b></h3>
                                <p class="text-muted">Total Brands</p>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>

                    <div class="col-md-6 col-lg-3">
                        <div class="widget-bg-color-icon card-box">
                            <div class="bg-icon bg-icon-primary pull-left">
                                <i class=" fa fa-industry text-info"></i>
                            </div>
                            <div class="text-right">
                                <h3 class="text-dark"><b class="counter" id="industryCount">0</b></h3>
                                <p class="text-muted">Total Industry</p>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>

                    <div class="col-md-6 col-lg-3">
                        <div class="widget-bg-color-icon card-box">
                            <div class="bg-icon bg-icon-primary pull-left">
                                <i class="fa fa-building text-info"></i>
                            </div>
                            <div class="text-right">
                                <h3 class="text-dark"><b class="counter" id="divisionCount">0</b></h3>
                                <p class="text-muted">Total Division</p>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>

                </div>
                
                <div class="row">
                    <div class="col-md-6 col-lg-3">
                        <div class="widget-bg-color-icon card-box fadeInDown animated">
                            <div class="bg-icon bg-icon-primary pull-left">
                                <i class="md-directions-car text-info"></i>
                            </div>
                            <div class="text-right">
                                <h3 class="text-dark"><b class="counter" id="visitCount">0</b></h3>
                                <p class="text-muted">Total Visit</p>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>

                    <div class="col-md-6 col-lg-3">
                        <div class="widget-bg-color-icon card-box">
                            <div class="bg-icon bg-icon-primary pull-left">
                                <i class="md-attach-money text-info"></i>
                            </div>
                            <div class="text-right">
                                <h3 class="text-dark"><b class="counter" id="orderCount">0</b></h3>
                                <p class="text-muted">Total Orders</p>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>

                    <div class="col-md-6 col-lg-3">
                        <div class="widget-bg-color-icon card-box">
                            <div class="bg-icon bg-icon-primary pull-left">
                                <i class="ti-announcement text-info"></i>
                            </div>
                            <div class="text-right">
                                <h3 class="text-dark"><b class="counter" id="demoCount">0</b></h3>
                                <p class="text-muted">Total Demo/Sampling</p>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>

                    <div class="col-md-6 col-lg-3">
                        <div class="widget-bg-color-icon card-box">
                            <div class="bg-icon bg-icon-primary pull-left">
                                <i class="fa fa-times text-info"></i>
                            </div>
                            <div class="text-right">
                                <h3 class="text-dark"><b class="counter" id="failVisitCount">0</b></h3>
                                <p class="text-muted">Total Fail Visit</p>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <!-- END wrapper -->
    </div>
</div>
<jsp:include page="footer.jsp"></jsp:include>
<script>
    var resizefunc = [];
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

<script type="text/javascript"
        src="${pageContext.request.contextPath }/resources/plugins/parsleyjs/dist/parsley.min.js"></script>

<script src="${pageContext.request.contextPath }/resources/plugins/sweetalert/dist/sweetalert.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/pages/jquery.sweet-alert.init.js"></script>
</body>

<script>
    // get count call
    $.ajax({
        url: "/sfa-empower-web/admin/dashboard/count",
        type: "GET",
        success: function (response) {
            counts = response.data;
            console.log(counts);
            $("#employeeCount").text(counts.employee);
            $("#distributorCount").text(counts.distributor);
            $("#outletCount").text(counts.outlet);
            $("#beatCount").text(counts.beat);
            $("#productCount").text(counts.product);
            $("#brandCount").text(counts.brand);
            $("#industryCount").text(counts.industry);
            $("#visitCount").text(counts.visit);
            $("#orderCount").text(counts.order);
            $("#divisionCount").text(counts.division);
            $("#demoCount").text(counts.demo);
            $("#failVisitCount").text(counts.failVisit);
            $()
        }
    });
</script>

</html>