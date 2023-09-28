<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
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
    background: url("img/bg_topnav.png");
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
			<dd><a href="#">HOME</a></dd>
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

<!-- 캐러셀 -->
	<br>
	<div>
	<div class="slide_category">
		<ul class="slides">
			<li>
				<figure>
				<img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fshop1.phinf.naver.net%2F20220415_125%2F1650014766731cMzSs_JPEG%2F51150665434912026_977327356.jpg&type=sc960_832" width="100" height="100">
				<figcaption align="center">스투시</figcaption>
				</figure>
			</li>
			<li>
			<figure>
			<img src="https://d1oro1067kxrgx.cloudfront.net/kirinco/images/2022/01/24/smfiojsdiofjiosdmoaf.png" width="100" height="100">
			<figcaption align="center">아식스</figcaption>
			</figure>
			</li>
			<li><img src="https://m.monoforce.co.kr/web/product/big/202301/3534b532617dd8086f3d7362490bd5ba.jpg" width="100" height="100"></li>
			<li><img src="https://goodpgl.openhost.cafe24.com/web/product/extra/big/202211/cd7d0a69c67f7dce4c6e3071fa4e29b4.jpg" width="100" height="100"></li>
			<li><img src="https://m.playmartin.com/web/product/big/202011/7183cd840684eccbf63b3c1641455a95.jpg" width="100" height="100"></li>
			<li><img src="https://m.centclo.com/web/product/big/202107/6ada0c2c15900cd11ae1062b4e0b17b1.jpg" width="100" height="100"></li>
			<li><img src="https://moonkle.co.kr/web/product/big/202201/e327fefb08f378a9ff209a0de62bcae7.jpg" width="100" height="100"></li>
		</ul>
	</div>
	</div>
	<p class="controls">
		<span class="prev">prev</span>
		<span class="next">next</span>
	</p>
	<hr class="carousel_hr">
	
<menu>
	<div class="snb">
		<p><b>필터</b></p>
		
		<ul class="categories">
		  <li class="category">카테고리
		    <ul class="subcategories">
		      <li><input type="checkbox" id="foot">신발</li>
		      <li><input type="checkbox" id="bag">가방</li>
		      <li><input type="checkbox" id="outter">아우터</li>
		      <li><input type="checkbox" id="top">상의</li>
		      <li><input type="checkbox" id="bottom">하의</li>
		      <li><input type="checkbox" id="wallot">지갑</li>
		    </ul>
		  </li>
		  
		  
		  
		  <li class="category">성별
		    <ul class="subcategories">
		      <li>남자</li>
		      <li>여자</li>
		      <li>키즈</li>
		    </ul>
  		  </li>
  		  
  		  <li class="category">브랜드
		    <ul class="subcategories">
		      <li></li>
		      <li></li>
		      <li></li>
		    </ul>
  		  </li>
  		  
  		  <li class="category">사이즈
		    <ul class="subcategories">
		      <li></li>
		      <li></li>
		      <li></li>
		    </ul>
  		  </li>
  		  
  		  <li class="category">혜택
		    <ul class="subcategories">
		      <li></li>
		      <li></li>
		      <li></li>
		    </ul>
  		  </li>
		</ul>
	</div>
</menu>
<main></main>
<dl class="skip">
	<dt class="blind">skip navigation</dt>
	<dd><a href="#content">skip to content</a></dd>
</dl><!-- //skip -->
<div id ="wrap">	
	<div id="container">
		
		<div id="content">
		<p class="locate">
			<a href="#">Home</a> &gt;
			<a href="#">About</a> &gt;
			<strong>Company Info</strong>
		</p>
		
		<div class="card-group">
		  <div class="card">
		    <img src="..." class="card-img-top" alt="...">
		    <div class="card-body">
		      <h5 class="card-title">Card title</h5>
		      <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
		      <p class="card-text"><small class="text-body-secondary">Last updated 3 mins ago</small></p>
		    </div>
		  </div>
		  <div class="card">
		    <img src="..." class="card-img-top" alt="...">
		    <div class="card-body">
		      <h5 class="card-title">Card title</h5>
		      <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
		      <p class="card-text"><small class="text-body-secondary">Last updated 3 mins ago</small></p>
		    </div>
		  </div>
		  <div class="card">
		    <img src="..." class="card-img-top" alt="...">
		    <div class="card-body">
		      <h5 class="card-title">Card title</h5>
		      <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
		      <p class="card-text"><small class="text-body-secondary">Last updated 3 mins ago</small></p>
		    </div>
		  </div>
		  <div class="card">
		    <img src="..." class="card-img-top" alt="...">
		    <div class="card-body">
		      <h5 class="card-title">Card title</h5>
		      <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
		      <p class="card-text"><small class="text-body-secondary">Last updated 3 mins ago</small></p>
		    </div>
		  </div>
		</div>
		
		<div class="card-group">
		  <div class="card">
		    <img src="..." class="card-img-top" alt="...">
		    <div class="card-body">
		      <h5 class="card-title">Card title</h5>
		      <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
		      <p class="card-text"><small class="text-body-secondary">Last updated 3 mins ago</small></p>
		    </div>
		  </div>
		  <div class="card">
		    <img src="..." class="card-img-top" alt="...">
		    <div class="card-body">
		      <h5 class="card-title">Card title</h5>
		      <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
		      <p class="card-text"><small class="text-body-secondary">Last updated 3 mins ago</small></p>
		    </div>
		  </div>
		  <div class="card">
		    <img src="..." class="card-img-top" alt="...">
		    <div class="card-body">
		      <h5 class="card-title">Card title</h5>
		      <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
		      <p class="card-text"><small class="text-body-secondary">Last updated 3 mins ago</small></p>
		    </div>
		  </div>
		  <div class="card">
		    <img src="..." class="card-img-top" alt="...">
		    <div class="card-body">
		      <h5 class="card-title">Card title</h5>
		      <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
		      <p class="card-text"><small class="text-body-secondary">Last updated 3 mins ago</small></p>
		    </div>
		  </div>
		</div>
		
		<div class="card-group">
		  <div class="card">
		    <img src="..." class="card-img-top" alt="...">
		    <div class="card-body">
		      <h5 class="card-title">Card title</h5>
		      <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
		      <p class="card-text"><small class="text-body-secondary">Last updated 3 mins ago</small></p>
		    </div>
		  </div>
		  <div class="card">
		    <img src="..." class="card-img-top" alt="...">
		    <div class="card-body">
		      <h5 class="card-title">Card title</h5>
		      <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
		      <p class="card-text"><small class="text-body-secondary">Last updated 3 mins ago</small></p>
		    </div>
		  </div>
		  <div class="card">
		    <img src="..." class="card-img-top" alt="...">
		    <div class="card-body">
		      <h5 class="card-title">Card title</h5>
		      <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
		      <p class="card-text"><small class="text-body-secondary">Last updated 3 mins ago</small></p>
		    </div>
		  </div>
		  <div class="card">
		    <img src="..." class="card-img-top" alt="...">
		    <div class="card-body">
		      <h5 class="card-title">Card title</h5>
		      <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
		      <p class="card-text"><small class="text-body-secondary">Last updated 3 mins ago</small></p>
		    </div>
		  </div>
		</div>
		
	 </div><!-- container -->
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