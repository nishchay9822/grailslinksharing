<%--
  Created by IntelliJ IDEA.
  User: nischay
  Date: 14/03/21
  Time: 5:59 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<div class="row">
    <g:render template="/template/LinkSharing"></g:render>
</div>
<div class="row">
    <div class="col-md-5 pull-left"><g:render template="/template/topicInfo" /></div>



    <div class="col-md-7 pull-right"><g:render template="/template/postsofselectedtopic"/></div>
</div>
<div class="row">

    <div class="col-md-5 pull-left"><g:render template="/template/userofselectedtopic" /></div>



    <div class="col-md-5 pull-right"></div>
</div>

</body>
</html>