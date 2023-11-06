<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Fakebook Login</title>
    <link rel="stylesheet" href="../css/login.css"/>
</head>
<body>
<div class="container">
    <div class="inner-container">
        <div class="left-col">
            <img
                    class="logo"
                    src="https://static.xx.fbcdn.net/rsrc.php/yI/r/4aAhOWlwaXf.svg"
                    alt="Fakebook"
            />
            <h2 class="slogan">
                Facebook giúp bạn kết nối và chia sẻ với mọi người trong cuộc sống
                của bạn.
            </h2>
        </div>
        <div class="right-col">
            <div class="right-container">
                <form action="${pageContext.request.contextPath}/login" method="post">
                    <div style="padding: 0 0 6px">
                        <div class="input-field">
                            <input
                                    type="email"
                                    placeholder="Email hoặc số điện thoại"
                                    name="username"
                                    value="${un}"
                            />
                        </div>
                        <div class="input-field">
                            <input
                                    type="password"
                                    placeholder="Mật khẩu"
                                    name="password"
                                    value="${pw}"
                            />
                        </div>
                    </div>
                    <div class="btn-container">
                        <button class="login" type="submit">Đăng nhập</button>
                    </div>
                </form>
                <div class="forgot-container">
                    <a class="forgot" href="/#">
                        Quên mật khẩu?
                    </a>
                </div>
                <div class="divider"></div>
                <div class="btn-container">
                    <a href="/register" class="sign-up-btn">Tạo tài khoản mới</a>
                </div>
            </div>
            <div class="reg-page">
                <a href="/#">Tạo trang</a> dành cho người nổi tiếng, thương hiệu
                hoặc doanh nghiệp.
            </div>
        </div>
    </div>
</div>
</body>
</html>
