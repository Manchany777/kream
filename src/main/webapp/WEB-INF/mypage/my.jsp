<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>마이 페이지</title>
    <link rel="stylesheet" href="./css/main.css">
<%--    <link rel="stylesheet" href="./css/mypageMain.css">--%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
          crossorigin="anonymous">
</head>
<body>
<header>
    <jsp:include page="../user/headerMain.jsp"/>
</header>


<content>
    <div style="float: left; width: 20%;">
        <jsp:include page="leftSideMenu.jsp" />
    </div>

    <div style="float: left; width: 80%;">
<%--        <h1>Menu Content</h1>--%>
        <div id="myContent">
        <!-- 비동기 로드 -->
            <jsp:include page="defaultMain.jsp" />
<%--            <c:choose>--%>
<%--                <c:when test="${param.menu == 'comment'}">--%>
<%--                    <jsp:include page="comment.jsp" />--%>
<%--                </c:when>--%>
<%--                <c:otherwise>--%>
<%--                    <jsp:include page="defaultMain.jsp" />--%>
<%--                </c:otherwise>--%>
            </c:choose>
        </div>
    </div>
</content>

<footer>
    <jsp:include page="../user/footerMain.jsp"/>
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
