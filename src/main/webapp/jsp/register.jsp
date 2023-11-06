<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Fakebook Register</title>
    <link rel="stylesheet" href="../css/register.css"/>
</head>
<body>
<div class="body-container">
    <div class="logo-container">
        <img
                class="logo"
                src="https://static.xx.fbcdn.net/rsrc.php/y1/r/4lCu2zih0ca.svg"
                alt="Fakebook"
        />
    </div>
    <div class="main-container">
        <form action="/register" method="post">
            <div class="register-form">
                <div class="form-header">
                    <div class="form-header-title">Tạo tài khoản mới</div>
                    <div class="form-header-message">Nhanh chóng và dễ dàng.</div>
                </div>
                <div class="form-body">
                    <div class="full-name-field">
                        <div class="name first-name">
                            <input placeholder="Họ" type="text" name="firstName"/>
                        </div>
                        <div class="name last-name">
                            <input placeholder="Tên" type="text" name="lastName"/>
                        </div>
                    </div>
                    <div class="username-field">
                        <input placeholder="Số di động hoặc email" type="email" name="username"/>
                    </div>
                    <div class="password-field">
                        <input placeholder="Mật khẩu mới" type="password" name="password"/>
                    </div>
                    <div class="tips">Ngày sinh</div>
                    <div class="dob-field">
                        <select class="birthday" name="birthDay">
                            <option value="1">1</option>
                        </select>
                        <select class="birthday" name="birthMonth">
                            <option value="1">Tháng 1</option>
                        </select>
                        <select class="birthday" name="birthYear">
                            <option value="2023">2023</option>
                        </select>
                    </div>
                    <div class="gender-container">
                        <div class="tips">Giới tính</div>
                        <div class="gender-field">
                <span class="gender">
                  <label class="gender-label" for="gender-female">Nữ</label>
                  <input
                          class="gender-radio"
                          id="gender-female"
                          name="gender"
                          type="radio"
                          value="female"
                  />
                </span>
                            <span class="gender">
                  <label class="gender-label" for="gender-male">Nam</label>
                  <input
                          class="gender-radio"
                          id="gender-male"
                          name="gender"
                          type="radio"
                          value="male"
                  />
                </span>
                            <span class="gender">
                  <label class="gender-label" for="gender-gay">Tuỳ chỉnh</label>
                  <input
                          class="gender-radio"
                          id="gender-gay"
                          name="gender"
                          type="radio"
                          value="gay"
                  />
                </span>
                        </div>
                    </div>
                    <div class="disclaimer">
                        <p class="disclaimer-text">
                            Những người dùng dịch vụ của chúng tôi có thể đã tải thông tin
                            liên hệ của bạn lên Facebook. <a href="">Tìm hiểu thêm</a>.
                        </p>
                    </div>
                    <div class="disclaimer">
                        <p class="disclaimer-text">
                            Bằng cách nhấp vào Đăng ký, bạn đồng ý với
                            <a href="">Điều khoản</a>,
                            <a href="">Chính sách quyền riêng tư</a> và
                            <a href="">Chính sách cookie</a> của chúng tôi. Bạn có thể nhận
                            được thông báo của chúng tôi qua SMS và hủy nhận bất kỳ lúc nào.
                        </p>
                    </div>
                    <div class="button-container">
                        <button type="submit" class="register-button">Đăng ký</button>
                    </div>
                    <div class="already-signup">
                        <a href="/login">Bạn đã có tài khoản ư?</a>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>
</body>
</html>
