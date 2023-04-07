<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html>

<head>
    <style>
        th {
            white-space: nowrap;
        }
    </style>
    <title>KRC Admin Panel | Add Member</title>
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
                                    href="${pageContext.request.contextPath }/admin/product/list">Product</a></li>
                            <li class="breadcrumb-item active">Add Product</li>
                        </ol>
                        <!-- <h4 class="page-title page-title-sticky">Add New User Details</h4> -->
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12" style="margin-top:50px">
                        <div class="card-box">
                            <h4 class="m-t-0 header-title"><b>Add Product</b></h4>
                            <p class="text-muted font-13 m-b-30">
                                Fill the required fields.
                            </p>
                            <c:if test="${error != null}"><p class="text-danger font-bold">${error}</p></c:if>
                            <form:form action="${pageContext.request.contextPath}/admin/product/update" method="post"
                                       modelAttribute="addEditProductDto" enctype="multipart/form-data">
                                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"
                                       id="csrf"/>
                                <div class="col-md-12">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group col-md-6">
                                                <label>Image</label>
                                                <input type="file" id="productImage" name="newImage"/>
                                            </div>
                                            <div class="form-group col-md-6">
                                               	<img  src="${pageContext.request.contextPath}/resources/images/foggy_birds.png"
                                                        height="80px" id="preview-image"/>
                                            </div>
                                        </div>

                                        <div class="col-md-4 form-group">
                                            <label for="sapId">Product Name<span
                                                    class="text-danger">*</span></label>
                                            <input type="text" name="name" pattern="^[0-9a-zA-Z][0-9a-zA-Z\s]*$"
                                                    required
                                                   placeholder="Product Name" class="form-control" id="productName">
                                                   <p style="color:red"> ${name_error}</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="clearfix"></div>
                                
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="col-md-6 form-group">
                                            <label for="category">Category<span
                                                class="text-danger">*</span></label>
                                            <select id="category" name="category" class="form-control select2">
                                                <c:forEach var="cat" items="${category}">
                                                    <option value="${cat.id}">
                                                    	${cat.name}
                                                    </option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                        <div class="col-md-6 form-group">
                                            <label for="retailerPrice">Sub Category<span
                                                class="text-danger">*</span></label>
                                            <select name="subCategory" id="subCategory" class="form-control select2" required>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="col-md-4 form-group">
                                            <label for="retailerPrice">Retailer Price<span
                                                class="text-danger">*</span></label>
                                            <input type="number" name="retailerPrice"
                                                parsley-trigger="change" required
                                                placeholder="Retailer Price" class="form-control" id="retailerPrice" step="any">
                                                <p style="color:red"> ${retailerPrice_error}</p>
                                        </div>
                                        <div class="col-md-4 form-group">
                                            <label for="maximumRetailerPrice">Maximum Retailer Price<span
                                                class="text-danger">*</span></label>
                                            <input type="number" name="maximumRetailPrice"
                                                parsley-trigger="change" required
                                                placeholder="Maximum Retailer Price" class="form-control" id="maximumRetailPrice" step="any">
                                                <p style="color:red"> ${maximumRetailPrice_error}</p>
                                        </div>
                                        <div class="col-md-4 form-group">
                                            <label for="distributorPrice">Distributor Price<span
                                                class="text-danger">*</span></label>
                                            <input type="number" name="distributorPrice"
                                                parsley-trigger="change" required
                                                placeholder="Distributo Price" class="form-control" id="distributorPrice" step="any">
                                                 <p style="color:red"> ${distributorPrice_error}</p>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="col-md-4 form-group">
                                            <label for="organicWeight">Organic Weight<span
                                                class="text-danger">*</span></label>
                                            <input type="number" name="orgWeight"
                                                parsley-trigger="change" required
                                                placeholder="Organic Weight" class="form-control" id="orgWeight" step="any">
                                                <p style="color:red"> ${orgWeight_error}</p>
                                        </div>
                                        <div class="col-md-4 form-group">
                                            <label for="weight">Weight<span
                                                class="text-danger">*</span></label>
                                            <input type="number" name="weight"
                                                parsley-trigger="change" required
                                                placeholder="Weight" class="form-control" id="weight" step="any">
                                                <p style="color:red"> ${weight_error}</p>
                                        </div>
                                        <div class="col-md-4 form-group">
                                            <label for="maximumRetailerPrice">Minimum Billing Qty<span
                                                class="text-danger">*</span></label>
                                            <input type="number" name="minimumBillingQty"
                                                parsley-trigger="change" required
                                                placeholder="Minimum Billing Qty" class="form-control" id="minimumBillingQty">
                                        </div>
                                        
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="col-md-4 form-group">
                                            <label for="gst">GST<span
                                                class="text-danger">*</span></label>
                                            <input type="number" name="gst"
                                                parsley-trigger="change" required
                                                placeholder="GST" class="form-control" id="gst" step="any">
                                        </div>
                                        <div class="col-md-4 form-group">
                                            <label for="unit">Unit<span
                                                class="text-danger">*</span></label>
                                            <input type="text" name="unit"
                                                 required pattern="^[0-9a-zA-Z][0-9a-zA-Z\s]*$"
                                                placeholder="Unit" class="form-control" id="unit">
                                                <p style="color:red"> ${unit_error}</p>
                                        </div>
                                        <div class="col-md-4 form-group">
                                            <label for="packSize">Pack Size<span
                                                class="text-danger">*</span></label>
                                            <input type="number" name="packSize"
                                                parsley-trigger="change" required
                                                placeholder="Package Size" class="form-control" id="packSize">
                                                <p style="color:red"> ${packSize_error}</p>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="col-md-4 form-group">
                                            <label for="cartonNo">Carton No<span
                                                class="text-danger">*</span></label>
                                            <input type="number" name="cartonNo"
                                                parsley-trigger="change" required
                                                placeholder="Carton No" class="form-control" id="gst" step="any">
                                                <p style="color:red"> ${cartonNo_error}</p>
                                        </div>
                                        <div class="col-md-4 form-group">
                                            <label for="packagingType">Packaging Type<span
                                                class="text-danger">*</span></label>
                                            <input type="text" name="packagingType"
                                                pattern="^[0-9a-zA-Z][0-9a-zA-Z\s]*$" required
                                                placeholder="Packaging Type" class="form-control" id="unit">
                                                <p style="color:red"> ${packagingType_error}</p>
                                        </div>
                                        <div class="col-md-4 form-group">
                                            <label for="productId">Product Id<span
                                                class="text-danger">*</span></label>
                                            <input type="text" name="productId"
                                                pattern="^[0-9a-zA-Z][0-9a-zA-Z\s]*$" required
                                                placeholder="Product Id" class="form-control" id="packSize">
                                                <p style="color:red"> ${productId_error}</p>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="col-md-4 form-group">
                                            <label for="divison">Division<span
                                                class="text-danger">*</span></label>
                                            <select id="divison" class="select2" multiple="multiple" name="divisions">
                                                <c:forEach var="divi" items="${divisions}">
                                                    <option value="${divi.id}" >${divi.name}</option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                        <div class="col-md-4 form-group">
                                            <label for="unit">Plant<span
                                                class="text-danger">*</span></label>
                                            <input type="text" name="plant"
                                                pattern="^[0-9a-zA-Z][0-9a-zA-Z\s]*$" required
                                                placeholder="Plant" class="form-control" id="plant">
                                                <p style="color:red"> ${plant_error}</p>
                                        </div>
                                        <div class="col-md-4 form-group">
                                            <label for="shelfLife">Shelf Life<span
                                                class="text-danger">*</span></label>
                                            <input type="number" name="shelfLife"
                                                parsley-trigger="change" required
                                                placeholder="Shelf Life" class="form-control" id="shelfLife">
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group text-right m-b-0">
                                    <button class="btn btn-primary waves-effect waves-light" type="submit">
                                        Submit
                                    </button>
                                    <button type="button" onclick="javascript:window.history.back()"
                                            class="btn btn-default waves-effect waves-light m-l-5">
                                        Cancel
                                    </button>
                                </div>
                            </form:form>
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
<script src="${pageContext.request.contextPath }/resources/plugins/waypoints/lib/jquery.waypoints.js"></script>
<script src="${pageContext.request.contextPath }/resources/plugins/counterup/jquery.counterup.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/plugins/raphael/raphael-min.js"></script>
<script src="${pageContext.request.contextPath }/resources/plugins/jquery-knob/jquery.knob.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/jquery.core.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/jquery.app.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/jquery.spring-friendly.js"></script>
<script src="${pageContext.request.contextPath }/resources/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/plugins/datatables/dataTables.bootstrap.js"></script>
<%-- <script type="text/javascript">
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
<script type="text/javascript">

    $(document).ready(function () {

        $('form').parsley();
        // Select2
        $(".select2").select2();


    function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('#preview-image').attr('src', e.target.result);
            }

            reader.readAsDataURL(input.files[0]);
        }
    }

    $("#productImage").change(function () {
        readURL(this);
    });

    $(document).ready(()=>{
        $.ajax({
                url: "/sfa-empower-web/admin/product/sub-category?category=" + $('#category').val(),
                type: "get",
                success: function (response) {
                    console.log(response.data);
                    $('#subCategory').empty();
                    for (i = 0; i < response.data.length; ++i) {
                    	$('#subCategory').append('<option value=' + response.data[i].id + '>' + response.data[i].name + '</option>');
                    }
                    $('#subCategory').select2();
                }
            });
            $('#category').on('change', function (e) {
            $.ajax({
                url: "/sfa-empower-web/admin/product/sub-category?category=" + $('#category').val(),
                type: "get",
                success: function (response) {
                    console.log(response.data);
                    $('#subCategory').empty();
                    $('#city').empty();
                    for (i = 0; i < response.data.length; ++i) {
                        $('#subCategory').append('<option value=' + response.data[i].id + '>' + response.data[i].name + '</option>');    
                    }
                    $('#subCategory').select2();
                }
            });
        });
    });

    });
</script>
<script src="${pageContext.request.contextPath }/resources/plugins/sweetalert/dist/sweetalert.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/pages/jquery.sweet-alert.init.js"></script>
 --%></body>

</html>
