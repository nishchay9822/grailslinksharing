<%--
  Created by IntelliJ IDEA.
  User: nischay
  Date: 10/03/21
  Time: 10:06 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <asset:stylesheet href="nav.css"/>
    <script src="https://kit.fontawesome.com/a390992c2b.js" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</head>

<body>
<div class="row">
<g:render template="/template/LinkSharing"/>
</div>
<div class="row">
<div class="col-md-5 pull-left"><g:render template="/template/userprofile" /></div>

%{--<div class="col-md-2"></div>--}%

<div class="col-md-7 pull-right"><g:render template="/template/updateinfo"/></div>
</div>
<div class="row">

    <div class="col-md-5 pull-left"><g:render template="/template/topicInfo" /></div>

%{--    <div class="col-md-2"></div>--}%
        <br>
    <div class="col-md-7 pull-right"><g:render template="/template/changepass" /></div>
</div>

</body>
</html>