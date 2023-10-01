<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Header</title>
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
</body>
</html>
