
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
        <!--<%@ include file="/static/css/LoginPage.css"%>-->
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
        <form action="/login/valibate.action" class="form-group">
            <input type="text" name="username" placeholder="输入你的用户名" required class="form-input">
            <input type="password" name="password" placeholder="输入密码" required class="form-input">
            <label class="radio-label">
                <input class="radio" type="radio" required name="demo-radio">
                <span class="demo--radioInput"></span>一般用户
            </label>
            <label class="demo--label">
                <input class="demo--radio" type="radio" name="demo-radio">
                <span class="demo--radioInput"></span>管理员
            </label>
            <button type="submit" class="login-button">
                <span class="icon-login"></span>
            </button>
        </form>
    </div>

</div>

</body>
</html>
