<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <style>
        #map_canvas {
            height: 550px;
            width: 100%;
            padding: 0px;
            border: 2px solid #BA0C2F;
            margin-top: 20px;
        }

        th {
            white-space: nowrap;
        }
    </style>
    <title>SFA Admin Panel | Add Offer To Product</title>
    <!-- App favicon -->
    <link rel="icon" href="${pageContext.request.contextPath }/resources/images/logo.png">
    <!--Morris Chart CSS -->
    <link href="${pageContext.request.contextPath }/resources/plugins/datatables/jquery.dataTables.min.css"
          rel="stylesheet" type="text/css"/>
    <link href="${pageContext.request.contextPath }/resources/plugins/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css"
          rel="stylesheet">

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
    <jsp:include page="../topbar.jsp"></jsp:include>
    <jsp:include page="../sidebar.jsp"></jsp:include>
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
                            <li class="breadcrumb-item"><a href="${pageContext.request.contextPath }/home">Home</a>
                            </li>
                            <li class="breadcrumb-item"><a
                                    href="${pageContext.request.contextPath }/admin/product/list">Products</a></li>
                            <li class="breadcrumb-item active">Add Offer to Product</li>
                        </ol>
                        <!-- <h4 class="page-title page-title-sticky">Add New User Details</h4> -->
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12" style="margin-top:50px">
                        <div class="card-box">
                            <div class="row container">
                                <h4 class="m-t-0 header-title"><b>Product Details</b></h4>

                                <div class="col-md-12">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Product Image</label><br/>
                                            <img src="https://th.bing.com/th/id/OIP.QG-frQdBU0qyX7O5cEShHAHaHg?pid=Api&rs=1"
                                                 alt="outlet-image" height="200px"/>
                                        </div>

                                    </div>
                                    <div class="col-md-6">
                                        <div class="col-md-12">
                                            <table class="table table-sm table-borderless">
                                                <tr>
                                                    <th>Product ID</th>
                                                    <td><p>${product.id}</p></td>
                                                </tr>
                                                <tr>
                                                    <th>Product Name</th>
                                                    <td><p>${product.name}</p></td>
                                                </tr>
                                                <tr>
                                                    <th>Sub Category</th>
                                                    <td><p>${product.subCategory.name}</p></td>
                                                </tr>
                                                <tr>
                                                    <th>Category</th>
                                                    <td><p>${product.subCategory.category.name}</p></td>
                                                </tr>
                                                <tr>
                                                    <th>Unit</th>
                                                    <td><p>${product.unit}</p></td>
                                                </tr>
                                                <tr>
                                                    <th>Minimum Billing Qty</th>
                                                    <td><p>${product.minimumBillingQty}</p></td>
                                                </tr>
                                                <tr>
                                                    <th>GST</th>
                                                    <td><p>${product.gst}</p></td>
                                                </tr>
                                                <tr>
                                                    <th>Maximum Retail Price</th>
                                                    <td><p>${product.maximumRetailPrice}</p></td>
                                                </tr>
                                                <tr>
                                                    <th>Distributor Price</th>
                                                    <td><p>${product.distributorPrice}</p></td>
                                                </tr>

                                            </table>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                        <div class="card-box">
                            <form action="${pageContext.request.contextPath}/admin/product/offered" method="post"
                                  onsubmit="setFormSubmitting()"
                                  novalidate>
                                <div class="row">
                                    <label>Add Offer to Product </label>
                                    <p class="text-muted font-13 m-b-30">
                                        Fill the required fields.
                                    </p>
                                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"
                                           id="csrf"/>
                                    <input type="hidden" value="${product.id}" name="id"/>
                                    <div class="col-md-12">

                                        <div class="col-md-4 form-group">
                                            <label for="country">Country</label>
                                            <select name="country" class="form-control select2" id="country"
                                                    required>
                                                <c:forEach var="c" items="${countries}">
                                                    <option value="${c.id}">${c.name}</option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                        <div class="col-md-4 form-group">
                                            <label for="state">State</label>
                                            <select id="state" name="state" class="form-control select2" required>
                                            </select>
                                        </div>
                                        <div class="col-md-4 form-group">
                                            <label for="city">City</label>
                                            <select name="city" id="city" class="form-control select2" required>
                                            </select>
                                        </div>
                                        <div class="clearfix"></div>

                                        <div class="col-md-6 form-group">
                                            <label for="fromDate">Start Date</label>
                                            <input min="${today}" format="yyyy-MM-dd" name="startDate" type="input"
                                                   class="form-control"
                                                   id="fromDate">
                                        </div>
                                        <div class="col-md-6 form-group">
                                            <label for="toDate">End Date</label>
                                            <input min="${today}" type="input" name="endDate" class="form-control"
                                                   id="toDate">
                                        </div>
                                        <div class="form-group col-md-12">
                                            <label>Offer Details</label>
                                            <textarea class="form-control" name="offer"></textarea>
                                        </div>
                                    </div>

                                    <div class="form-group text-right m-b-0">
                                        <button class="btn btn-primary waves-effect waves-light" type="submit">
                                            Submit
                                        </button>
                                        <button type="reset" class="btn btn-default waves-effect waves-light m-l-5">
                                            Cancel
                                        </button>
                                    </div>

                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- END wrapper -->
</div>
</div>
<jsp:include page="../footer.jsp"></jsp:include>
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
<script src="${pageContext.request.contextPath }/resources/plugins/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>

<script src="${pageContext.request.contextPath }/resources/plugins/waypoints/lib/jquery.waypoints.js"></script>
<script src="${pageContext.request.contextPath }/resources/plugins/counterup/jquery.counterup.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/plugins/raphael/raphael-min.js"></script>
<script src="${pageContext.request.contextPath }/resources/plugins/jquery-knob/jquery.knob.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/jquery.core.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/jquery.app.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/jquery.spring-friendly.js"></script>
<script src="${pageContext.request.contextPath }/resources/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/plugins/datatables/dataTables.bootstrap.js"></script>
<script src="${pageContext.request.contextPath }/resources/plugins/bootstrap-inputmask/bootstrap-inputmask.min.js"
        type="text/javascript"></script>
<script type="text/javascript">
    jQuery(document).ready(function ($) {
        $('.counter').counterUp({
            delay: 100,
            time: 1200
        });
        $(".knob").knob();
    });
</script>
<script type="text/javascript"
        src="${pageContext.request.contextPath }/resources/plugins/parsleyjs/dist/parsley.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/plugins/moment/moment.js"></script>
<script>
    var formSubmitting = false;
    var setFormSubmitting = function () {
        formSubmitting = true;
    };
    var setFormSubmittingToFalse = function () {
        formSubmitting = false;
    };

    window.onload = function () {
        window
            .addEventListener(
                "beforeunload",
                function (e) {
                    if (formSubmitting) {
                        return undefined;
                    }

                    var confirmationMessage = 'It looks like you have been editing something. '
                        + 'If you leave before saving, your changes will be lost.';

                    (e || window.event).returnValue = confirmationMessage; //Gecko + IE
                    return confirmationMessage; //Gecko + Webkit, Safari, Chrome etc.
                });

    };


</script>


<script type="text/javascript">
    $(document).ready(function () {

        // Select2
        $(".select2").select2();


        $("#fromDate").datepicker({
            autoClose: true,
            format: 'yyyy-mm-dd',
            todayHighlight: true,
            minDate: 0,
            startDate: new Date()
        }).on('changeDate', function (e) {
            $('#toDate').data('datepicker').setStartDate($('#fromDate').val());
        });


        $("#toDate").datepicker({
            autoClose: true,
            format: 'yyyy-mm-dd',
            todayHighlight: true,
            minDate: 0,
            startDate: new Date()
        });


        $('#country').on('change', function (e) {
            $.ajax({
                url: "/sfa-empower-web/admin/states?country=" + $('#country').val(),
                type: "get",
                success: function (response) {
                    // console.log(response.data);
                    $('#state').empty();
                    for (i = 0; i < response.data.length; ++i) {
                        $('#state').append('<option value=' + response.data[i].id + '>' + response.data[i].name + '</option>');
                        $('#state').select2();
                    }
                }
            });
        });
        $('#state').on('change', function (e) {
            $.ajax({
                url: "/sfa-empower-web/admin/cities?state=" + $('#state').val(),
                type: "get",
                success: function (response) {
                    // console.log(response.data);
                    $('#city').empty();
                    $('#city').append('<option value="ALL">ALL</option>');
                    for (i = 0; i < response.data.length; ++i) {
                        $('#city').append('<option value=' + response.data[i].id + '>' + response.data[i].name + '</option>');
                    }
                    $('#city').select2();
                }
            });
        });

        // getting states
        $.ajax({
            url: "/sfa-empower-web/admin/states?country=" + $('#country').val(),
            type: "get",
            success: function (response) {
                // console.log(response.data);
                $('#state').empty();
                for (i = 0; i < response.data.length; ++i) {
                    $('#state').append('<option value=' + response.data[i].id + '>' + response.data[i].name + '</option>');
                    $('#state').select2();
                }

                // getting cities
                $.ajax({
                    url: "/sfa-empower-web/admin/cities?state=" + response.data[0].id,
                    type: "get",
                    success: function (response) {
                        // console.log(response.data);
                        $('#city').empty();
                        $('#city').append('<option value="ALL">ALL</option>');
                        for (i = 0; i < response.data.length; ++i) {
                            $('#city').append('<option value=' + response.data[i].id + '>' + response.data[i].name + '</option>');
                            $('#city').select2();
                        }
                    }
                });
            }
        });

    });
</script>
<script src="${pageContext.request.contextPath }/resources/plugins/sweetalert/dist/sweetalert.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/pages/jquery.sweet-alert.init.js"></script>
</body>

</html>
