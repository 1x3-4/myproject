<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입</title>
    <link rel="stylesheet" href="join.css">
    <script>       
    window.onload = function () {

        const regExp_id = /^(?=.*[0-9])[A-Za-z0-9]{4,8}$/;
        const regExp_pw = /^(?=.*[A-Za-z])(?=.*[0-9])(?=.*[~!@#$%^()+|=]).{6,14}$/;
        const regExp_name1 = /^.*(?=.*[가-힣])/;
        const regExp_hp = /^010-\d{4}-\d{4}$/;
        const regExp_email = /^[a-zA-Z0-9+-\_.]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$/;

        frm_join.addEventListener("keypress", function (e) {
            if (e.key === "Enter") {
                e.preventDefault();
            }
        });

        frm_join.id_btn.addEventListener("click", function () {

            if (frm_join.id.value.length == 0) {

                alert("아이디가 입력되지 않았습니다");
                frm_join.id.focus();
            } else if (!regExp_id.test(frm_join.id.value)) {
                alert("아이디는 8~10자 영문자 또는 숫자이어야 합니다.");
                frm_join.id.focus();

            } else if (regExp_id.test(frm_join.id.value)) {
                alert("정상입력 되었습니다.")
                frm_join.pw.focus();
            }

        });

        frm_join.submit_btn.addEventListener("click", function (e) {
            let valid = false;
            if (frm_join.id.value.length == 0) {
                alert("아이디가 입력되지 않았습니다.")
                frm_join.id.focus();
            } else if (!regExp_pw.test(frm_join.pw.value)) {
                alert("비밀번호는 8글자~16글자이하로 영문자,숫자,특수문자가 1개이상 포함되어야 합니다.");
                frm_join.pw.focus();
            } else if (frm_join.name1.value.length == 0) {
                alert("이름이 입력되지 않았습니다.")
                frm_join.name1.focus();
            } else if (!regExp_name1.test(frm_join.name1.value)) {
                alert("이름을 다시 입력해주세요.");
                frm_join.name1.focus();
            } else if (frm_join.phone.value.length == 0) {
                alert("핸드폰 번호가 입력되지 않았습니다.")
                frm_join.phone.focus();
            } else if (!regExp_hp.test(frm_join.phone.value)) {
                alert("핸드폰 번호를 다시 입력해주세요.")
            } else if (frm_join.email.value.length == 0) {
                alert("이메일이 입력되지 않았습니다.");
                frm_join.email.focus();
            } else if (!regExp_email.test(frm_join.email.value)) {
                alert("이메일을 다시 입력해주세요.")
            } else { // 입력값이 모두 정상적으로 입력되어진 경우
                valid = true;
                alert("모든 입력값이 정상적으로 입력되었습니다");
            }

            if (!valid) {
                e.preventDefault();
                e.stopPropagation();
            }
            frm_join.submit();

        });
    };

       </script>
</head>
<body>
    <form name="frm_join" method="post" action="join_process3.jsp">
        <div id="wrap">
            <header>
                <div id="logo">
                    <img src="image/이벤트.png" alt="">
                </div>
            </header>
            <section>
                <div class="join">회원가입</div>
                <ul class="mainInfo">
                    <div>
                    <li class="info">
                        아이디&emsp;&emsp;<input type="text" name="id" id="id" autofocus ><button type="button" name="id1" id="id_btn"  value="중복확인">중복확인</button>
                    </div>
                    </li>
                    <li class="info">비밀번호&emsp;&emsp;<input type="password" name="pw" id="pw"></li>
                    <li class="info">이름&emsp;&emsp;<input type="text" name="name1" id="name1"></li>
                    <li class="info">핸드폰번호&emsp;&emsp;<input type="tel" name="phone" id="phone"></li>
                    <li class="info">이메일&emsp;&emsp;<input type="email" name="email" id="email" required></li>

                </ul>
            </section>

            <footer>
                <div id="btn">
                    
                    <button type="button" name="submit_btn" class="btn1">가입하기
                    <button class="btn1" src="#">취소</button>
                </div>

            </footer>
        </div>
    </form>
</body>
</html>