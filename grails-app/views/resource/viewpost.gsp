<%--
  Created by IntelliJ IDEA.
  User: nischay
  Date: 15/03/21
  Time: 3:29 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <asset:stylesheet href="nav.css"/>
    <title></title>
</head>

<body>
<div class="row">
    <g:render template="/template/LinkSharing" /></div>
</div>
<br>

<div class="row">
    <div class="col-md-6 pull-left"><g:render template="/template/postsview"></g:render></div>


    <div class="col-md-6 pull-right"><g:render template="/template/trendingtopic"></g:render></div>
</div>
<div class="row">

    <div class="col-md-5 pull-left"></div>

    <div class="col-md-2"></div>

    <div class="col-md-5 pull-right"></div>
</div>
</body>
</html>