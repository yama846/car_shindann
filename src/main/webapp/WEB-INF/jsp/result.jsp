<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="com.design_shinbi.shindan.model.Result" %>

<%
    String name = (String)request.getAttribute("name");
    Result result = (Result)request.getAttribute("result");
%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>診断結果</title>
        <link rel="stylesheet" type="text/css" href="css/style.css">
    </head>
    <body>
        <h1>おすすめ車メーカー診断 診断結果</h1>
        <p><%= name %> さんの診断結果は</p>
        <p><span id="result"><%= result.getName() %></span> です。</p>
        <p><%= result.getDescription() %></p>
         <!-- 画像を表示 -->
         <%
    String imageFileName = ""; // 画像ファイル名を格納する変数を初期化
    if (result.getName().equals("トヨタ")) {
        imageFileName = "トヨタ.png"; // トヨタに対応する画像ファイル名
    } else if (result.getName().equals("ホンダ")) {
        imageFileName = "ホンダ.png"; // ホンダに対応する画像ファイル名
    } else if (result.getName().equals("スバル")) {
        imageFileName = "スバル.png"; // スバルに対応する画像ファイル名
    } else if (result.getName().equals("スズキ")) {
        imageFileName = "スズキ.png"; // スズキに対応する画像ファイル名
    }
    %>
    <img src="images/<%= imageFileName %>" alt="<%= result.getName() %>の画像">
        [<a href="top">戻る</a>]
    </body>
</html>