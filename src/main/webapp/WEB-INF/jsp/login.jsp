<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description"
          content="A fully featured admin theme which can be used to build CRM, CMS, etc.">
    <meta name="author" content="Coderthemes">

    <link rel="shortcut icon"
          href="${pageContext.request.contextPath}/resources/images/logo.png">

    <title>Kanhaiya's -Admin Panel</title>

    <link
            href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"
            rel="stylesheet" type="text/css"/>
    <link href="${pageContext.request.contextPath}/resources/css/core.css"
          rel="stylesheet" type="text/css"/>
    <link
            href="${pageContext.request.contextPath}/resources/css/components.css"
            rel="stylesheet" type="text/css"/>
    <link href="${pageContext.request.contextPath}/resources/css/icons.css"
          rel="stylesheet" type="text/css"/>
    <link href="${pageContext.request.contextPath}/resources/css/pages.css"
          rel="stylesheet" type="text/css"/>
    <link
            href="${pageContext.request.contextPath}/resources/css/responsive.css"
            rel="stylesheet" type="text/css"/>

    <script
            src="${pageContext.request.contextPath}/resources/js/modernizr.min.js"></script>
</head>
<body>
<div class="account-pages"></div>
<div class="clearfix"></div>
<div class="wrapper-page">
    <div class=" card-box">
        <div class="panel-heading">
            <h3 class="text-center">
                <!-- Admin Panel <br />  --><img height="100px"
                                                 src="${pageContext.request.contextPath }/resources/images/logo_white.jpg">
            </h3>
            <c:choose>
                <c:when test="${pageContext.request.queryString == 'logout' }">
                    <div class="btn btn-success">You are successfully logged out!!!</div>
                </c:when>
                <c:when test="${pageContext.request.queryString == 'error' }">
                    <div class="btn btn-danger">Invalid Email or Password</div>
                </c:when>
            </c:choose>

        </div>
        <div class="panel-body">
            <form class="form-horizontal m-t-20"
                  action="${pageContext.request.contextPath }/authenticate" method="post">

                <input type="hidden" name="${_csrf.parameterName}"
                       value="${_csrf.token}"/>

                <div class="form-group ">
                    <div class="col-xs-12">
                        <input type="text" name="username"
                               data-parsley-required-message="Email Id is required"
                               parsley-trigger="change" required="" placeholder="Email Id"
                               class="form-control" data-parsley-id="4">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-xs-12">
                        <input type="password" name="password" parsley-trigger="change"
                               data-parsley-required-message="Password is required" required=""
                               placeholder="Password" class="form-control" data-parsley-id="4">
                    </div>
                </div>

                <div class="form-group text-center m-t-40">
                    <div class="col-xs-12">
                        <button
                                class="btn btn-primary btn-block text-uppercase waves-effect waves-light"
                                type="submit">Log In
                        </button>
                    </div>
                </div>
                <!--   <div class="form-group m-t-30 m-b-0">
                       <div class="col-sm-12">
                           <a href="page-recoverpw.html" class="text-dark"><i class="fa fa-lock m-r-5"></i> Forgot your password?</a>
                       </div>
                   </div> -->
            </form>
        </div>
    </div>
    <!-- <div class="row">
               <div class="col-sm-12 text-center">
                   <p>Don't have an account? <a href="#" class="text-primary m-l-5"><b>Sign Up</b></a></p>
             </div>
        </div> -->
</div>

<!-- Custom Javascript -->
<script
        src="${pageContext.request.contextPath}/resources/js/admin/admin-login.js"
        type="text/javascript"></script>

<!-- jQuery  -->
<script
        src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
<script
        src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/detect.js"></script>
<script
        src="${pageContext.request.contextPath}/resources/js/fastclick.js"></script>
<script
        src="${pageContext.request.contextPath}/resources/js/jquery.slimscroll.js"></script>
<script
        src="${pageContext.request.contextPath}/resources/js/jquery.blockUI.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/waves.js"></script>
<script
        src="${pageContext.request.contextPath}/resources/js/wow.min.js"></script>
<script
        src="${pageContext.request.contextPath}/resources/js/jquery.nicescroll.js"></script>
<script
        src="${pageContext.request.contextPath}/resources/js/jquery.scrollTo.min.js"></script>
<script
        src="${pageContext.request.contextPath}/resources/js/jquery.core.js"></script>
<script
        src="${pageContext.request.contextPath}/resources/js/jquery.app.js"></script>
<script
        src="${pageContext.request.contextPath}/resources/plugins/parsleyjs/dist/parsley.min.js"
        type="text/javascript"></script>

<script>
    var resizefunc = [];
    $(document).ready(function () {
        $('form').parsley();
    });
</script>
</body>
</html>