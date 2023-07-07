<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
      rel="stylesheet"
      href="${contextPath}/resources/styles/css/mypage-main-mem.css"
    />
    <link rel="stylesheet" href="${contextPath}/resources/styles/css/pw-change.css" />
    <title>Coward | 비밀번호 변경</title>
  </head>
  <body>
     <!-- 헤더와 공통 네비 -->
    <jsp:include page="/WEB-INF/views/common/header.jsp" />
    <jsp:include page="/WEB-INF/views/common/nav.jsp" />
    <!-- 배너 -->
    <!-- web-box 중앙 배치 위해 -->
    <div class="full">
      <div class="banner-top sm-hidden">
        <img src="${contextPath}/resources/assets/images/mypage-banner.png" />
      </div>

      <!-- 웹 페이지 -->
      <!-- 웹에서 헤더랑 푸터 사이 간격 주기 위해 사용 -->
      <div class="empty-box">
        <!-- 네비 + 내용을 감싸는 박스(모든 페이지 크기 고정)-->
        <div class="web-box">
          <!-- 네비게이션 바 -->

          <aside>
            <nav class="category">
              <div class="container">
                <div class="row">
                  <div class="col-sm-4 category-web">
                    <p class="profile-mypage lg-only">마이페이지</p>
                    <div class="profile lg-only">
                      <div class="profile-img avatar">
                        <img
                          src="${contextPath}/resources/assets/images/default-user-img.png"
                        />
                      </div>
                      <div class="profile-info">
                        <div class="profile-type">Back</div>
                        <p class="profile-nick">빡과장</p>
                      </div>
                    </div>

                    <ul class="category-bar">
                      <li><a href="#">내 정보</a></li>
                      <li><a href="#">공모전 관리</a></li>
                      <li><a href="#">크레딧 인출</a></li>
                      <li><a href="#">프로필 수정</a></li>
                      <li><a href="${contextPath}/member/changePw">비밀번호 변경</a></li>
					  <li><a href="${contextPath}/member/secession">회원 탈퇴</a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </nav>
          </aside>

          <!-- 본문 시작 -->
          <main class="profile-mem">
            <div class="container">
              <div class="row">
                <div class="col-sm-4">
                  <div class="profile-wrapper">
                    <!------------------------- 여기서 부터 작성 --------------------------->

                    <div class="title md-hidden">
                      <span class="pw-change">비밀번호 변경</span>
                      <hr class="line" />
                    </div>
                    <form action="changePw" method="POST" name="myPage-form" onsubmit="return changePwValidate()">
                      <div class="pw-change-wrapper">
                        <div class="pw-change-box">
                          <span class="pw-input-title">현재 비밀번호</span>
                          <div class="input-bundle">
                            <input
                              class="pw-input"
                              id="current-pw"
                              type="password"
                              name="currentPw"
                              placeholder="현재 비밀번호를 입력해주세요!"
                            />
                            <i class="ic-eye-close"></i>
                          </div>
                          <button type="button" class="next-btn">다음</button>
                        </div>
                      </div>
                      <!-- 비밀번호 변경 -->
                      <div class="pw-change-wrapper">
                        <div class="pw-change-box2">
                          <div>
                            <span class="pw-input-title">비밀번호</span>
                            <span class="validation"></span>
                          </div>
                          <div class="input-bundle">
                            <input
                              class="pw-input"
                              id="change-pw"
                              type="password"
                              name="newPw"
                              placeholder="8자리 이상, 대소문자 포함"
                            />
                            <i class="ic-eye-close"></i>
                          </div>
                          <span class="pw-input-title">비밀번호 확인</span>
                          <span class="validation"></span>
                          <div class="input-bundle">
                            <input
                              class="pw-input"
                              id="change-pw-chk"
                              name="newPwConfirm"
                              type="password"
                              placeholder="현재 비밀번호를 입력해주세요!"
                            />
                            <i class="ic-eye-close"></i>
                          </div>
                          <button class="next-btn">다음</button>
                        </div>
                      </div>
                    </form>
                    <!-- 본문 끝 -->
                  </div>
                </div>
              </div>
            </div>
          </main>
        </div>
      </div>
    </div>
    <!-- 푸터 -->
	<jsp:include page="/WEB-INF/views/common/footer.jsp" />
    <!-- tiny-slider -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tiny-slider/2.9.2/min/tiny-slider.js"></script>
    <script src="${contextPath}/resources/js/mypage-slider.js"></script>
    <script src="${contextPath}/resources/js/changePw.js"></script>
  </body>
</html>
