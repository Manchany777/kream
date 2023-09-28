<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>관리자 페이지</title>
    <style>
      * {
        margin: 0;
        padding: 0;
      }
      body {
        font-family: "맑은 고딕", sans-serif;
      }
      .left--menu--element__icon {
        width: 18vw;
        height: 5vh;
        background-color: rgb(7, 22, 46);
      }
      #top {
        display: flex;
        justify-content: flex-start;
        align-items: center;
        width: 100vw;
        height: 12vh;
        background-color: white;
        position: fixed;
        top: 0;
        left: 0;
        z-index: 100;
      }
      #top img {
        position: fixed;
        top: 0.5vh;
        left: 2vw;
      }

      #left {
        display: flex;
        flex-direction: column;
        justify-content: flex-start;
        align-items: center;
        width: 18vw;
        height: 85vh;
        background-color: rgb(7, 22, 46);
        position: fixed;
        top: 12vh;
        left: 0;
        z-index: 100;
      }
      #left--menu {
        display: flex;
        flex-direction: column;
        justify-content: flex-start;
        align-items: center;
      }
      #left--menu--element {
        display: flex;
        flex-direction: column;
        justify-content: space-around;
        align-items: center;
        width: 18vw;
        height: 5vh;
        position: fixed;
        top: 12vh;
        left: 0;
        z-index: 100;
      }
      #left--menu--element a {
        display: block;
        width: 18vw;
        height: 5vh;
        text-align: center;
        line-height: 5vh;
        text-decoration: none;
        color: rgb(228, 228, 228);
        font-size: 1.5vw;
      }
      #left--menu--element a:hover {
        background-color: black;
        color: white;
      }

      #content {
        width: 80vw;
        height: 85vh;
        background-color: white;
        position: fixed;
        top: 6.5vh;
        left: 20vw;
        z-index: 100;
        text-align: center;
      }
      #content h1 {
        margin-top: 10vh;
      }
    </style>
  </head>
  <body>
    <!--관리자페이지-->
    <div id="top">
      <img src="../image/logo.png" alt="logo" width="220" />
    </div>
    <!--좌측메뉴-->
    <div id="left">
      <div id="left--home">홈</div>
      <div id="left--menu">
        <div id="left--menu--element">
          <img
            src="left--menu--element__icon"
            class="left--menu--element__icon"
            alt="home"
          />
          <a href="/kream/admin/adminProduct">상품관리</a>
          <div class="left--menu--element__icon"></div>
          <a href="/kream/admin/adminUser">회원관리</a>
          <div class="left--menu--element__icon"></div>
          <a href="/kream/admin/adminOrder">주문관리</a>
          <div class="left--menu--element__icon"></div>
          <a href="/kream/admin/adminQna">Q&A관리</a>
        </div>
      </div>
    </div>
    <!--컨텐츠-->
    <div id="content">
      <h1>관리자페이지</h1>
      <a href="/kream/admin/adminMain">관리자페이지</a>
    </div>
  </body>
</html>
