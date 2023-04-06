function logout(context) {
    $.ajax({
        type: "POST",
        url: context + '/logout',
        cache: false,
        success: function (html) {
            window.location.href = '${pageContext.request.contextPath}/admin/login';
        }
    });
}