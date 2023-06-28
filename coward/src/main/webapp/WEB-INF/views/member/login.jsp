<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="../styles/css/login.css" />
    <script
      src="https://kit.fontawesome.com/e5fede6c09.js"
      crossorigin="anonymous"
    ></script>
    <title>Coward | 로그인</title>
  </head>
  <body>
    <div class="container">
      <div class="row">
        <div class="col-sm-4">
          <div class="login-wrapper">
            <img
              src=".${ContextPath}/resources/assets/images/login-bg.svg"
              class="login-bg-img lg-only"
            />
            <div class="login-box">
              <div class="logo-p-box">
                <a href="#">
                  <img src="${ContextPath}/resources/assets/images/home_logo.svg" class="logo-img" />
                </a>
                <p class="p-first">Coward에 오신 것을 환영합니다!</p>
              </div>
              <br /><br />
              <p class="p-email">이메일</p>
              <div class="email-input-box">
                <input
                  placeholder="example@gmail.com"
                  type="email"
                  class="input-email"
                />
              </div>
              <br />
              <div class="pw-input-box">
                <p class="p-pw">비밀번호</p>
                <form action="#" name="pw-form">
                  <fieldset>
                    <input
                      placeholder="example@gmail.com"
                      type="password"
                      class="input-pw"
                    />
                    <i class="ic-eye-close"></i>
                  </fieldset>
                  <div class="btn-secondary btn-48 login-btn">로그인</div>
                </form>
                <br />
              </div>
              <br /><br />
              <div class="saveid-findpw-wrapper">
                <div class="save-id-wrapper">
                  <form action="#">
                    <input
                      type="checkbox"
                      id="save-id"
                      class="save-id-chk-box"
                    />
                    <label for="save-id"
                      ><span class="span-first">아이디 저장</span></label
                    >
                  </form>
                </div>
                <a href="../pages/pw-find.html" class="pw-find"
                  >비밀번호 찾기</a
                >
              </div>
              <div class="line-box">
                <hr class="line1" />
                <hr class="line2" />
                <p class="p-or">또는</p>
              </div>
              <div class="simple-login-box">
                <img
                  src="../assets/images/goolge-logo.png"
                  class="google-logo"
                />
                <img src="../assets/images/kakao-logo.png" class="kakao-logo" />
                <button class="google-btn">Google로 계속</button>
                <button class="kakao-btn">Kakao로 계속</button>
              </div>
              <br />
              <span class="span-second">혹시 아직 회원이 아니신가요?</span>
              <a href="../pages/join-first.html" class="join">회원가입</a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>