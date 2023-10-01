<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Menu</title>
<style type="text/css">
    ul {
        list-style-type:none;
    }
    li {
        /*display:inline-block;*/
        margin:  12px 30px 0 50px;
        font-size: 13px
    }
    a:link {
        text-decoration:none;
        color: #888a83;
    }
    a:visited {
        text-decoration:none;
        color: #888a83;
    }
    a:active {
        text-decoration:none;
        color: #030303;
    }
    .container {
        width:500px;
        margin: 0 auto;
    }
    div {
        border: 1px solid red;
    }
</style>
</head>
<body>
<nav class="sidebar">
    <div class="container">
        <ul><a href="my">마이 페이지</a>
            <li><a href="my">쇼핑 정보</a></li>
            <li><a href="buying">구매내역</a></li>
            <li><a href="../user/saved">관심 상품</a></li>
        </ul>
    </div>
    <div class="container">
        <ul>내 정보
            <li><a href="profile">로그인 정보</a></li>
            <li><a href="profile-edit">프로필 관리</a></li>
            <li><a href="address">주소록</a></li>
            <li><a href="payment">결제 정보</a></li>
            <li><a href="${pageContext.request.contextPath}/my/board">문의 내역글 조회</a></li>
            <li><a href="${pageContext.request.contextPath}/my?menu=comment">후기 댓글 조회</a></li>
        </ul>
    </div>
</nav>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    $(document).ready(function() {
        $("ul li a").on("click", function(e) {
            e.preventDefault();
            var url = $(this).attr("href");
            $.ajax({
                url: url,
                method: "GET",
                success: function(response) {
                    $("#myContent").html(response);
                }
            });
        });
    });
</script>
</body>
</html>
