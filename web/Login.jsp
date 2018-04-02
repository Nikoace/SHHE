
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>FileShareSystem</title>
    <script type="application/javascript">
        function reloadCode() {
            var time = new Date().getTime();
            document.getElementById("Code").src = "<%=request.getContextPath()%>/CheckCode/CheckCode" + time;
        }
    </script>
    <style type="text/css">
        @import url(/static/LoginPage.css);
    </style>
</head>
<body>
<div class="container">
    <div class="logo">
        <div class="logo-block-top">
        </div>
        <div class="logo-block-bottom">
        </div>
    </div>
    <h4 class="login-header">用户登录</h4>
    <div class="content">
        <div class="form-group">
            <input type="text" required class="form-control">
            <label class="form-label">用户名</label>
        </div>
        <div class="form-group">
            <input type="text" required class="form-control">
            <label class="form-label">密 码</label>
        </div>
        <div class="option">
            <div class="option-left"><a href="">忘记密码</a></div>
            <div class="option-right">
                <span class="md-checkbox" checked="checked"></span>
                <label class="form-label">记住密码</label>
            </div>
        </div>
    </div>
    <button class="login-button">
        <span class="icon-login"></span>
    </button>
</div>
<s:property value="username"/>
<s:property value="password"/>
<s:property value="type"/>
</body>
</html>
