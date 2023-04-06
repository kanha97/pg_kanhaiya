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
    <title>SFA Admin Panel | Products</title>
    <!-- App favicon -->
    <link rel="shortcut icon" href="${pageContext.request.contextPath }/resources/images/logo.png">
    <!--Morris Chart CSS -->
    <link href="${pageContext.request.contextPath }/resources/plugins/datatables/jquery.dataTables.min.css"
          rel="stylesheet" type="text/css"/>
    <link href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
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
                            <li class="breadcrumb-item active">Products</li>
                        </ol>
                        <h4 class="page-title page-title-sticky">Products</h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12" style="margin-top:50px">
                        <div class="card-box table-responsive">
                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" id="csrf"/>
                            <br/>
                            <a href="${pageContext.request.contextPath }/admin/product/add">
                                <button
                                        type="button" class="btn btn-primary waves-effect waves-light">
                                    <span class="btn-label"><i class="fa fa-plus"></i></span>Add
                                    New Product
                                </button>
                            </a> <br/><br/>
                            <table id="sample" class="table table-striped table-bordered" style="width: 100%">
                                <thead>
                                <tr>
                                    <th>No</th>
                                    <th>Product ID</th>
                                    <th>Image</th>
                                    <th>Name</th>
                                    <th>Sub Category</th>
                                    <th>Category</th>
                                    <th>Unit</th>
                                    <th>Minimum Billing Qty</th>
                                    <th>GST</th>
                                    <th>MRP</th>
                                    <th>DP</th>
                                    <th>Actions</th>
                                </tr>
                                </thead>
                                <tbody>
                                </tbody>
                            </table>
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

<script type="text/javascript">
    jQuery(document).ready(function ($) {
        $('.counter').counterUp({
            delay: 100,
            time: 1200
        });
        $(".knob").knob();
    });
</script>


<script type="text/javascript">
    $(document)
        .ready(
            function () {
                console.log('he');
                var table = $('table#sample')
                    .DataTable(
                        {
                            'ajax': '/sfa-empower-web/admin/product/data/list',
                            'serverSide': true,
                            'pagination': true,
                            columns: [
                                {
                                    data: 'id',
                                    sortable: false,
                                    "render": function (
                                        data, type,
                                        full, meta) {
                                        return meta.row + 1;
                                    }
                                },
                                {
                                    data: 'productId'
                                },
                                {
                                    data: 'image',
                                    sortable: false,
                                    "render": function (data, type, row) {
                                        if (data != null) {
                                            return '<img src="${azurepath}/product/' + data + '" alt="product-image" height="50px"/>';
                                        }
                                        return '<img src="https://th.bing.com/th/id/OIP.QG-frQdBU0qyX7O5cEShHAHaHg?pid=Api&rs=1" alt="outlet-image" height="50px"/>';
                                    }
                                },
                                {
                                    data: 'name',
                                    sortable: false,
                                },
                                {
                                    data: 'subCategory.name',
                                    sortable: false,
                                },
                                {
                                    data: 'subCategory.category.name',
                                    sortable: false,
                                },
                                {
                                    data: 'unit',
                                    sortable: false,
                                },
                                {
                                    data: 'minimumBillingQty',
                                    sortable: false,
                                },
                                {
                                    data: 'gst',
                                    sortable: false,
                                },
                                {
                                    data: 'maximumRetailPrice',
                                    sortable: false,
                                },
                                {
                                    data: 'distributorPrice',
                                    sortable: false,
                                },
                                {
                                    data: 'id',
                                    'sortable': false,
                                    'render': function displayActions(
                                        data, type,
                                        row) {
                                        return '<a href="${pageContext.request.contextPath}/admin/product/edit/' + data + '"><i title="Edit" class="fa fa-eye"></i></a>&nbsp;&nbsp;<i class="fa fa-trash text-danger" onclick=deleteProduct("' + data + '") style="cursor:pointer"></i>&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/admin/product/promoted/' + data + '"><i class="fa fa-bullhorn text-success" title="Promote Product"></i></a>&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/admin/product/offer/' + data + '"><i class="fa fa-gift text-success" title="Offer"></i></a>';
                                    }
                                }
                            ]
                        });

                function renderDate(data, type, row) {
                    if (data) {
                        var dm = moment({
                            y: data.year,
                            M: data.monthValue - 1,
                            d: data.dayOfMonth
                        });
                        switch (type) {
                            case 'display':
                                return dm.format("DD/MM/YYYY");
                            default:
                                return dm.format("X");
                        }
                    } else {
                        return '';
                    }
                }
            });
</script>

<!-- <script>
function deleteProduct(id){
swal({
    title: "Are you sure?",
    /* text: "You will not be able to recover this imaginary file!" */
    type: "warning",
    showCancelButton: true,
    confirmButtonColor: '#EEB422',
    confirmButtonText: "Delete Shop",
    closeOnConfirm: false
}, function(){
    swal({title:"Deleting...", text:"Shop has been deleting...", type:"info",showCancelButton:false,showConfirmButton:false,closeOnClickOutside:false});
         $.ajax({
        url : '/ghaf-admin/supermarket/admin/shop/'+id+'/delete',
        type : 'POST',
        dataType : 'json',
        beforeSend : function(request) {
            request.setRequestHeader('X-CSRF-Token', document
                    .getElementById('csrf').value);
        },
        success : function(response) {
            setTimeout(function() {
                swal(
                        {
                            title:"Deleted", text:"Shop has been deleted successfully",
                             type:"success"
                        },function(){
                            $('#sample').DataTable().ajax.reload();
                        }
                        );
            }, 500);
        }
    });
});

}
</script> -->
<script src="${pageContext.request.contextPath }/resources/plugins/sweetalert/dist/sweetalert.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/pages/jquery.sweet-alert.init.js"></script>
</body>

</html>
