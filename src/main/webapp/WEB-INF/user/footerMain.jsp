<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Footer</title>
    <link rel="stylesheet" href="./css/main.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
          crossorigin="anonymous">
</head>
<body>
<footer>
  <div id="footer" style="position: fixed; bottom: 0; width: 100%;">
<%--    <div id="guide">--%>
<%--      <dl class="guidenav">--%>
<%--        <dt>이용안내</dt>--%>
<%--        <dd><a href="#">검수기준</a></dd>--%>
<%--        <dd><a href="#">이용정책</a></dd>--%>
<%--        <dd><a href="#">패널티 정책</a></dd>--%>
<%--        <dd><a href="#">커뮤니티 가이드라인</a></dd>--%>
<%--      </dl>--%>
<%--    </div>--%>

<%--    <div id="Support">--%>
<%--      <dl class="Supportnav">--%>
<%--        <dt>고객지원</dt>--%>
<%--        <dd><a href="#">공지사항</a></dd>--%>
<%--        <dd><a href="#">서비스 소개</a></dd>--%>
<%--        <dd><a href="#">스토어 안내</a></dd>--%>
<%--        <dd><a href="#">판매자 방문접수</a></dd>--%>
<%--      </dl>--%>
<%--    </div>--%>

    <div class="supportTel">
      <ul>
        <li><b>고객센터 1588-7813</b></li>
        <li>운영시간 평일 11:00 - 18:00 (토/일, 공휴일 근무)</li>
        <li>점심시간 평일 13:00 - 14 :00 (토/일, 공휴일 근무)</li>
        <li><b>1:1문의하기는 앱에서만 가능합니다.</b></li>
      </ul>
      <button type="button" class="btn btn-dark">자주 묻는 질문</button>
    </div>

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
