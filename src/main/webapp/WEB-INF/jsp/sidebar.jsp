<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!-- ========== Left Sidebar Start ========== -->

<div class="left side-menu">
    <div class="sidebar-inner slimscrollleft">
        <!--- Divider -->
        <div id="sidebar-menu">
            <ul>

                <li class="text-muted menu-title">Navigation</li>
                <li>

                    <a href="${pageContext.request.contextPath }/admin/home"
                       class="waves-effect <c:if test='${fn:contains(pageContext.request.requestURL,"/admin/home") }'>active</c:if>"><i
                            class="ti-home"></i> <span> Dashboard</span> </a>
                </li>

                <li class="has_subuest">
                    <a href="#"
                       class="waves-effect <c:if test='${fn:contains(pageContext.request.requestURL,"/admin/user-details") ||  fn:contains(pageContext.request.requestURL,"/admin/employee")
                       										||  fn:contains(pageContext.request.requestURL,"/admin/sub-admin") }'>active subdrop</c:if>"><i
                            class="ti-settings"></i> <span> Manage Users</span> </a>
                    <ul class="list-unstyled"
                        <c:if test='${fn:contains(pageContext.request.requestURL,"/admin/user-details") ||  fn:contains(pageContext.request.requestURL,"/admin/employee") }'>style="display:block"</c:if>  >
                        <li class="<c:if test='${fn:contains(pageContext.request.requestURL,"/admin/user-details") }'>active</c:if>">
                            <a href="${pageContext.request.contextPath }/admin/user-details/list">User Details</a></li>
                        <li class="<c:if test='${fn:contains(pageContext.request.requestURL,"/admin/employee") }'>active</c:if>">
                            <a href="${pageContext.request.contextPath }/admin/employee/list">Employee</a></li>
                        <li class="<c:if test='${fn:contains(pageContext.request.requestURL,"/admin/sub-admin") }'>active</c:if>">
                            <a href="${pageContext.request.contextPath }/admin/sub-admin/list">Sub Admin</a></li>
                    </ul>
                </li>

                <li class="has_subuest">
                    <a href="#"
                       class="waves-effect <c:if test='${fn:contains(pageContext.request.requestURL,"/admin/beat") ||  fn:contains(pageContext.request.requestURL,"/admin/outlet") ||  fn:contains(pageContext.request.requestURL,"/admin/product") ||  fn:contains(pageContext.request.requestURL,"/admin/collateral")  }'>active subdrop</c:if>"><i
                            class="ti-panel"></i> <span> Retailing </span> </a>
                    <ul class="list-unstyled"
                        <c:if test='${fn:contains(pageContext.request.requestURL,"/admin/beat") ||  fn:contains(pageContext.request.requestURL,"/admin/outlet") ||  fn:contains(pageContext.request.requestURL,"/admin/product") ||  fn:contains(pageContext.request.requestURL,"/admin/collateral") }'>style="display:block"</c:if> >
                        <li class="<c:if test='${fn:contains(pageContext.request.requestURL,"/admin/outlet") }'>active</c:if>">
                            <a href="${pageContext.request.contextPath }/admin/outlet/list">Parties</a></li>
                        <li class="<c:if test='${fn:contains(pageContext.request.requestURL,"/admin/beat") }'>active</c:if>">
                            <a href="${pageContext.request.contextPath }/admin/beat/list">Beats</a></li>
                        <li class="<c:if test='${fn:contains(pageContext.request.requestURL,"/admin/product") }'>active</c:if>">
                            <a href="${pageContext.request.contextPath }/admin/product/list">Products</a></li>
                        <li class="<c:if test='${fn:contains(pageContext.request.requestURL,"/admin/collateral") }'>active</c:if>">
                            <a href="${pageContext.request.contextPath }/admin/collateral/list">Collaterals</a></li>
                        <%--                        <li><a href="#">Activities</a></li>--%>
                        <%--                        <li><a href="#">Requests</a></li>--%>
                        <%--                        <li><a href="#">Schemes</a></li>--%>
                        <%--                        <li><a href="#">Orders</a></li>--%>
                        <%--                        <li><a href="#">Product Demo</a></li>--%>
                        <%--                        <li><a href="#">Telephone Visit</a></li>--%>
                        <%--                        <li><a href="#">Sales Return</a>--%>
                    </ul>
                </li>

                <li class="has_subuest">
                    <a href="#"
                       class="waves-effect <c:if test='${fn:contains(pageContext.request.requestURL,"/admin/pages")}'>active subdrop</c:if>"><i
                            class="ti-bookmark-alt"></i> <span> Pages </span> </a>
                    <ul class="list-unstyled"
                        <c:if test='${fn:contains(pageContext.request.requestURL,"/admin/pages/privacy-policy") || fn:contains(pageContext.request.requestURL,"/admin/pages/terms-conditions")}'>style="display:block"</c:if> >
                        <li class="<c:if test='${fn:contains(pageContext.request.requestURL,"/admin/pages/privacy-policy") }'>active</c:if>">
                            <a href="${pageContext.request.contextPath }/admin/pages/privacy-policy">Privacy Policy</a>
                        </li>
                        <li class="<c:if test='${fn:contains(pageContext.request.requestURL,"/admin/pages/terms-conditions") }'>active</c:if>">
                            <a href="${pageContext.request.contextPath }/admin/pages/terms-conditions">Terms &amp; Conditions</a>
                        </li>
                    </ul>
                </li>

                <li class="has_subuest">
                    <a href="#"
                       class="waves-effect <c:if test='${fn:contains(pageContext.request.requestURL,"/admin/beat-plan") || fn:contains(pageContext.request.requestURL,"/admin/outlet/block-transfer")}'>active subdrop</c:if>"><i
                            class="ti-upload"></i> <span> Bulk Data Upload </span> </a>
                    <ul class="list-unstyled"
                        <c:if test='${fn:contains(pageContext.request.requestURL,"/admin/beat-plan/add") || fn:contains(pageContext.request.requestURL,"/admin/outlet/block-transfer")}'>style="display:block"</c:if> >
                        <li class="<c:if test='${fn:contains(pageContext.request.requestURL,"/admin/beat-plan/add") }'>active</c:if>">
                            <a href="${pageContext.request.contextPath }/admin/beat-plan/add">Beat Plan</a>
                        </li>
                        <li class="<c:if test='${fn:contains(pageContext.request.requestURL,"/admin/outlet/block-transfer") }'>active</c:if>">
                            <a href="${pageContext.request.contextPath }/admin/outlet/block-transfer">Block-Transfer Outlet</a>
                        </li>
                    </ul>
                </li>

                <li class="has_subuest">
                    <a href="#"
                       class="waves-effect <c:if test='${fn:contains(pageContext.request.requestURL,"/admin/survey") || fn:contains(pageContext.request.requestURL,"/admin/survey")}'>active subdrop</c:if>"><i
                            class="ti-bar-chart"></i> <span> Survey Management</span> </a>
                    <ul class="list-unstyled"
                        <c:if test='${fn:contains(pageContext.request.requestURL,"/admin/survey/list") || fn:contains(pageContext.request.requestURL,"/admin/survey/add") ||
                                        fn:contains(pageContext.request.requestURL,"/admin/survey-question/list") || fn:contains(pageContext.request.requestURL,"/admin/survey-question/add")}'>style="display:block"</c:if> >
                        <li class="<c:if test='${fn:contains(pageContext.request.requestURL,"/admin/survey/list") || fn:contains(pageContext.request.requestURL,"/admin/survey/add") }'>active</c:if>">
                            <a href="${pageContext.request.contextPath }/admin/survey/list">Survey</a>
                        </li>
                        <!-- <li class="<c:if test='${fn:contains(pageContext.request.requestURL,"/admin/survey-question/list") || fn:contains(pageContext.request.requestURL,"/admin/survey-question/add") }'>active</c:if>">
                            <a href="${pageContext.request.contextPath }/admin/survey-question/list">Question</a>
                        </li> -->
                    </ul>
                </li>
                
                
                <li>
                    <a href="${pageContext.request.contextPath }/admin/settings"
                       class="waves-effect <c:if test='${fn:contains(pageContext.request.requestURL,"/admin/settings")}'>active subdrop</c:if>"><i
                            class="ion-ios7-gear-outline"></i> <span> Settings </span> </a>
                </li>

              

            </ul>
            <div class="clearfix"></div>
        </div>
        <div class="clearfix"></div>
    </div>
</div>
<!-- Left Sidebar End -->
