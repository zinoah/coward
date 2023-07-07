// 인증했는지 안했는지 확인을위한 변수 선언
let isCertOK = false;

// 중복된 이메일일 경우 확인버튼 눌러도 메인으로 못넘어가도록
let duplicationEmail = false;

// 완료버튼 눌렀을때 조건 만족하지 않으면 못넘어가도록
let emailOK = false;
let pwOK = false;
let pwChkOK = false;

// 완료 버튼 클릭
completeBtn.addEventListener("click", function () {
  //  overlay.classList.add("is-active");
  //  joinModal.style.display = "block";

  // 이메일 인증을 안하고 완료버튼을 눌렀을경우
  if (isCertOK == false) {
    alert("이메일 인증 먼저 완료해주세요!");
    return;
  }

  const signUpForm = document.getElementById("signUp-form");
  signUpForm.submit();
});

// 이메일 유효성 + 중복 검사
const memberEmail = document.getElementById("memberEmail");
const emailMessage = document.getElementById("emailMessage"); // 이메일 유효한지 텍스트 띄울공간

memberEmail.addEventListener("input", function () {
  // 입력이 안됐을때
  if (memberEmail.value.length == 0) {
    emailMessage.innerText = "메일을 받을 수 있는 이메일을 입력해주세요.";

    return;
  }

  // 입력된 경우
  const regExp = /^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$/;

  if (regExp.test(memberEmail.value)) {
    // 유효한 경우

    $.ajax({
      url: "emailDupCheck",

      data: { memberEmail: memberEmail.value },

      type: "GET",

      success: function (result) {
        // console.log(result);

        if (result == 1) {
          // 중복인 경우
          emailMessage.innerText = "확인되었습니다.";
          emailMessage.style.color = "green";

          duplicationEmail = false;
        } else {
          // 중복 아닌 경우
          emailMessage.innerText = "회원가입 먼저 진행해주세요!";
          emailMessage.style.color = "red";

          duplicationEmail = true;
        }
      },

      error: function (req, status, error) {
        console.log(req.responseText);
      },
    });
  } else {
    emailMessage.innerText = "이메일 형식이 유효하지 않습니다.";
    emailMessage.style.color = "red";
  }
});

// 타이머에 사용될 변수
const cMessage = document.getElementById("cMessage");
let checkInterval;
let min = 4;
let sec = 59;

// 이메일 인증하기 버튼눌렀을때
function sendEmail() {
  const memberEmail = document.getElementById("memberEmail");

  const emailBox = document.querySelector(".email-box");
  const emailDisplay = document.querySelector(".email-cert-display");

  if (emailMessage.innerText == "이메일 형식이 유효하지 않습니다.") {
    alert("가입되어있지 않은 이메일입니다. 이메일을 확인해주세요!");
    return;
  }

  if (emailMessage.innerText == "회원가입 먼저 진행해주세요!") {
    alert("정보가 없는 이메일 입니다. 이메일을 확인해주세요!");
    return;
  }

  if (duplicationEmail == true) {
    alert("가입되어있지 않은 이메일입니다. 다른 이메일을 입력해주세요!");
    return; // 함수실행중단
  } else {
    emailBox.style.display = "none";
    emailDisplay.style.display = "block";
  }

  $.ajax({
    url: "sendEmail",

    data: { memberEmail: memberEmail.value },

    type: "GET",

    success: function (result) {
      // console.log(result);
      console.log("이메일 발송 성공");
    },

    error: function (req, status, error) {
      console.log(req.responseText);
      console.log("이메일 발송 실패");
    },
  });

  cMessage.innerText = "5:00";
  min = 4;
  sec = 59;

  cMessage.classList.remove("confirm");
  cMessage.classList.remove("error");

  cMessage.style.color = "$red";

  // 변수에 저장해야지 멈출 수 있음
  checkInterval = setInterval(function () {
    if (sec < 10) sec = "0" + sec;
    cMessage.innerText = min + ":" + sec;

    if (Number(sec) === 0) {
      min--;
      sec = 59;
    } else {
      sec--;
    }

    if (min === -1) {
      // 만료
      cMessage.classList.add("error");
      cMessage.innerText = "인증번호가 만료되었습니다.";

      clearInterval(checkInterval); // checkInterval 반복을 지움
    }
  }, 1000); // 1초 지연 후 수행

  alert("인증번호가 발송되었습니다. 이메일을 확인해주세요.");
}

// 이메일로 인증번호 받고 입력 후 확인눌렀을 때
function emailCertChk() {
  const memberEmail = document.getElementById("memberEmail");
  const cNumber = document.getElementById("cNumber");

  $.ajax({
    url: "emailCertChk",

    data: { memberEmail: memberEmail.value, cNumber: cNumber.value },

    type: "GET",

    success: function (result) {
      console.log(result);

      if (result == 1) {
        clearInterval(checkInterval);
        alert("인증이 완료되었습니다.");
        isCertOK = true;
      } else if (result == 2) {
        alert("만료된 인증번호입니다.");
      } else {
        alert("인증에 실패하였습니다.");
        isCertOK = false;
      }
    },

    error: function (req, status, error) {
      console.log(req.responseText);
      console.log("이메일 인증 실패");
    },
  });
}

// 비밀번호 유효성 검사 + 일치하는지 확인
const memberPw = document.getElementById("memberPw");
const memberPwConfirm = document.getElementById("memberPwConfirm");
const pwMessage1 = document.querySelector(".pw-explanation1");
const pwMessage2 = document.querySelector(".pw-explanation2");

memberPw.addEventListener("input", function () {
  if (memberPw.value.length == 0) {
    return;
  }

  const regExp = /^(?=.*[a-z])(?=.*[A-Z]).{8,}$/;

  if (regExp.test(memberPw.value)) {
    if (memberPwConfirm.value.length == 0) {
      pwMessage1.innerTexst = "유효한 비밀번호 형식입니다.";
      pwMessage1.style.color = "green";
    } else {
      checkPw();
    }
  } else {
    pwMessage1.innerText = "비밀번호 형식이 유효하지 않습니다.";
    pwMessage1.style.color = "red";
  }
});

// 비밀번호 확인 유효성 검사
memberPwConfirm.addEventListener("input", checkPw);

function checkPw() {
  if (memberPw.value == memberPwConfirm.value) {
    pwMessage2.innerText = "비밀번호가 일치합니다.";
    pwMessage2.style.color = "green";
  } else {
    pwMessage2.innerText = "비밀번호가 일치하지 않습니다.";
    pwMessage2.style.color = "red";
    pwMessage2.classList.add("error");
    pwMessage2.classList.remove("confirm");
  }
}