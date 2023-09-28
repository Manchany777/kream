<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>마이 페이지</title>
    <style>
        /* 슬라이드 관련 CSS */
        .slide_category{
            display: flex;
            justify-content: center; /* 수평 가운데 정렬 */
            align-items: center; /* 수직 가운데 정렬 */
            position: relative;
            width: 55%; /* 변경된 너비 */
            margin: auto;
            height: 120px;
            overflow:hidden;
        }
        .slides li{
            list-style:none;
        }
        .slides{
            position: absolute;
            white-space: nowrap; /* 요소들이 한 줄로 나오게 함 */
        }
        .slides.animated{
            transition: 0.5s ease-out;
        }
        .slides li{
            width: 100px;
            height: 120px;
            background: url("../img/bg_topnav.png");
            display: inline-block; /* 요소들이 겹치지 않고 한 줄로 표시됨 */
            vertical-align: top; /* 상단 정렬 (원하는 정렬 방식으로 변경 가능) */
            margin-right: 30px;
        }
        .slides li:not(:last-child){
            margin-right: 30px;
        }
        .controls{
            text-align: center;
            margin-top: 15px;
        }

        .controls span{
            background:#333;
            color: #fff;
            padding:10px 20px;
            margin:0 10px;
        }
        .category.active .subcategories {
            display: block;
        }
        figcaption{
            color:#333;
            margin:5px;
            font-size:0.8em;
        }
    </style>
    <link rel="stylesheet" href="./css/main.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
          crossorigin="anonymous">
</head>
<body>
<header>
    <div id="header">
        <h1 class="logo"><a href="#">LOGO</a></h1>

        <dl class="topnav">
            <dt class="blind">top navigation</dt>
            <dd><a href="#">고객센터</a></dd>
            <dd><a href="/kream/my">마이페이지</a></dd>
            <dd><a href="#">관심상품</a></dd>
            <dd><a href="#">로그인</a></dd>
        </dl>

        <dl class="topnav2">
            <dt class="blind">top navigation2</dt>
            <dd><a href="/kream">HOME</a></dd>
            <dd><a href="#" style="font-weight:bold;">SHOP</a></dd>
            <dd><a href="#"><img style="width:25px; height:25px;" src="./img/search.png" alt="Search"></a></dd>
        </dl>

        <div><a class="title" href="#">SHOP</a></div>

        <h2 class="blind">main navigation</h2>
        <ul class="mainnav">
            <li><a href="#">전체</a></li>
            <li><a href="#">신발</a></li>
            <li><a href="#">가방</a></li>
            <li><a href="#">아우터</a></li>
            <li><a href="#">상의</a></li>
            <li><a href="#">하의</a></li>
            <li><a href="#">지갑</a></li>
        </ul>
    </div><!-- header -->
</header>

<footer>
    <div id="footertop">
        <div id="footer1">
            <div id="guide">
                <dl class="guidenav">
                    <dt>이용안내</dt>
                    <dd><a href="#">검수기준</a></dd>
                    <dd><a href="#">이용정책</a></dd>
                    <dd><a href="#">패널티 정책</a></dd>
                    <dd><a href="#">커뮤니티 가이드라인</a></dd>
                </dl>
            </div>

            <div id="Support">
                <dl class="Supportnav">
                    <dt>고객지원</dt>
                    <dd><a href="#">공지사항</a></dd>
                    <dd><a href="#">서비스 소개</a></dd>
                    <dd><a href="#">스토어 안내</a></dd>
                    <dd><a href="#">판매자 방문접수</a></dd>
                </dl>
            </div>

            <div class="supportTel">
                <ul>
                    <li><b>고객센터 1588-7813</b></li>
                    <li>운영시간 평일 11:00 - 18:00 (토/일, 공휴일 근무)</li>
                    <li>점심시간 평일 13:00 - 14 :00 (토/일, 공휴일 근무)</li>
                    <li><b>1:1문의하기는 앱에서만 가능합니다.</b></li>
                </ul>
                <button type="button" class="btn btn-dark">자주 묻는 질문</button>
            </div>
        </div>

    </div>


    <div id="footer">
        <dl class="btmnav">
            <dt class="blind">bottom navigation</dt>
            <dd><a href="#">회사소개</a></dd>
            <dd><a href="#">인재채용</a></dd>
            <dd><a href="#">제휴제안</a></dd>
            <dd><a href="#">이용약관</a></dd>
            <dd><a href="#">개인정보처리방침</a></dd>
        </dl>

        <div class ="saup">
            <p>크림 주식회사 대표 정지안  사업자등록번호 : 570-88-11111</p>
            <p>사업장 소재지 : 비트캠프</p>
        </div>
        <p class="copy">
            &copy; Kream corp<br>
        </p>
    </div><!-- footer -->
</footer>

</div><!-- wrap -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
        crossorigin="anonymous">
</script>
<!-- partial -->
<script src="./js/shopMainSlide.js"></script>
<script type="text/javascript">
    const categories = document.querySelectorAll('.category');

    categories.forEach(category => {
        category.addEventListener('click', () => {
            // 클릭한 카테고리의 활성/비활성 상태를 토글
            category.classList.toggle('active');
        });
    });
</script>
</body>
</html>
