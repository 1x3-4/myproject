<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1, maximum-scale=1,user-scalable=no">
<title>Insert title here</title>
<link rel="stylesheet" href="main.css">

</head>
<body>
    <header>
        <div id="logo"></div>
        <input type="search" name="searchWord" id="searchWord" placeholder=" 검색어를 입력해주세요.">
        <ul id="headerbox">
            <li><a href="login.jsp"><img src="image/image1.png"><span>로그인&nbsp;</span></a></li>
            <li><a href="#"><img src="image/image2.png"><span>예약내역&nbsp;&nbsp;</span></a></li>
            <li><a href="join.jsp"><img src="image/image1.png"><span>회원가입&nbsp;&nbsp;</span></a></li>
        </ul>
    </header>
    <div class="menubar">
        <nav class="flexbox">
            <ul class="ul1">
                <li class="menu1">
                    <a href="">전체메뉴</a>
                    <a href="">국내여행</a>
                    <a href="">해외여행</a>
                    <a href="">항공권</a>
                    <div><a href="" style="flex: grow ;"></a></div>
                    <a href="">기획전</a>
                    <a href="">이벤트</a>
                    <a href="">고객센터</a>
                    <a href="">고객센터</a>
                    <a href="">고객센터</a>
                </li>
            </ul>
        </nav>
    </div>
    <section id="masterbox">
        <div class="flexbox">
            <div><img src="image/메인.png">
                <div><a href="#" class="btn-gradient green mini">Prev</a>
                    <a href="#" class="btn-gradient green mini">Next</a>
                </div>
            </div>
        </div>
    </section>
    <section class="bodybox">
        <div class="space">
            <h1>오늘의 특가상품</h1>
        </div>
        <div class="card mb-3">
            <div class="row g-0">
                <div class="col-md-4">
                    <h3 class="card-ttitle">괌 크라운플라자 자유여행 4/5일</h3>
                    <img src="image/638187083647735206.avif" class="img-fluid rounded-start" alt="...">
                </div>
                <div class="col-md-8">
                    <section class="card-body">
                        <section class="rightbody">
                            <p class="space"></p>
                            <h4 class="card-title">괌 크라운플라자 자유여행 4/5일</h4>
                            <p class="card-text">#크라운플라자 #호캉스</p>
                            <p class="card-text"><small class="text-body-secondary">가심비 특급호텔! 합리적인 가격으로
                                    떠나볼GUAM?!</small></p>
                            <large class="card-price">특가 799,000원 부터</large>
                        </section>
                    </section>
                </div>
            </div>
            <div class="bodybox2">
                <div class="card1 mb-3">
                    <div class="row1 g-0">
                        <div class="col1-md-4">
                            <img src="image/card2.avif" class="img-fluid rounded-start" alt="...">
                        </div>
                        <section class="col-md-8">
                            <section class="card1-body">
                                <h4 class="card1-title">해외여행</h4>
                                <h3 class="card-text">오사카/나라/교토(아라시야마)/고베 3일</h3>
                                <p class="card-text"><small class="text-body-secondary">#양조장견학#시내숙박#하루는내맘대로!</small>
                                </p>
                                <h4>
                                    <large class="card1-price">699,900원 ~ </large>
                                </h4>
                            </section>
                        </section>
                    </div>
                </div>
                <div class="card1 mb-3">
                    <div class="row1 g-0">
                        <div class="col1-md-4">
                            <img src="image/card2.avif" class="img-fluid rounded-start" alt="...">
                        </div>
                        <div class="col-md-8">
                            <div class="card1-body">
                                <h4 class="card1-title">해외여행</h4>
                                <h3 class="card-text">[부산출발] 푸꾸옥 패키지(중부지역 리조트)</h3>
                                <p class="card-text"><small class="text-body-secondary">#푸꾸옥#소나가리조트#노쇼핑#세미팩#핵심관광
                                        #휴양지</small>
                                </p>
                                <h4>
                                    <large class="card1-price">549,900원 ~ </large>
                                </h4>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <footer>
        <div id="footerbox">
            <nav class="footerbox1">
                <ul class="footerbox2">
                    <span style="font-weight: bold; color: black;">해외/국내 여행상담</span>
                    <li><a href="#" style="font-weight: bold; color: #028267;"><img
                                src="image/callimage.png">1544-5252</a></li>
                    <span style="font-weight: bold; color: black;">부산/대구출발 여행상담</span>
                    <li><a href="#" style="font-weight: bold; color: #028267;"><img
                                src="image/callimage.png">1544-6722</a></li>
                </ul>
                <nav class="notice" style="font-weight: bold;">공지사항
                    <ul class="footerbox2">
                        <li class="font201"><a href="#">모두투어 부문별 인턴사원 채용공고</a> 2023.07.20</li>
                        <li class="font201"><a href="#">금융상품 판매대리 중개업자 증서</a> 2023.06.13</li>
                        <li class="font201"><a href="#">개인정보처리방침 개정안내</a> 2023.05.30</li>
                    </ul>
                </nav>
            </nav>
            <nav class="footerbox11">
                <ul class="num1">ARS 상담번호 안내
                    <li class="font200">1번 여행상담</li>
                    <li class="font200">① 해외여행</li>
                    <li class="font200">② 국내여행</li>
                </ul>
                <ul class="num2">1번 > 누른후 5번<br>호텔,현지투어,패스문의
                    <li class="font200">① 해외호텔</li>
                    <li class="font200">② 국내호텔</li>
                    <li class="font200">③ 현지투어,패스</li>
                </ul>
            </nav>
            <nav class="footerbox22">
                <ul class="num1">상담시간 안내
                    <li class="font202">평일 09:00 - 18:00 (토/일요일 및 공휴일 휴무)</li>
                    <li class="font202">※ 항공권은 전화상담 예약시 항공료 외 별도의 취급수수료가 발생합니다.</li>
                </ul>
                <ul class="num1">[항공] 시스템결제요청,환불/변경문의
                    <li class="font202">평일 09:00 - 17:00 (토/일요일 및 공휴일 휴무)</li>
                </ul>
                <ul class="num1">기업단체문의
                    <li class="font202"><a href="#">https://biz.modetour.com</a></li>
                </ul>

            </nav>
        </div>
        <div class="footer2">
            <li class="footerbar">
                <a href="">회사소개</a>
                <a href="">개인정보처리방침</a>
                <a href="">여행약관</a>
                <a href="">이용약관</a>
                <a href="">여행보험</a>
                <a href="">마케팅제휴문의</a>
                <a href="">온라인제휴문의</a>
                <a href="">여행플래너</a>
                <a href="">대리점개설문의</a>
            </li>
        </div>
        <div class="footer">
            (주)모두투어네트워크대표이사"
            <span class="font-normal">&emsp;우종웅&emsp;</span>
            &emsp;사업자등록번호
            <span class="font-normal">&emsp;202-81-45295&emsp;</span>
            &emsp;통신판매업신고번호
            <span class="font-normal">&emsp;중구 제03500호&emsp;</span>
            &emsp;호스팅 업체
            <span class="font-normal">&emsp;(주)모두투어네트워크&emsp;</span>

        </div>

    </footer>
    <div>

</body>
</html>