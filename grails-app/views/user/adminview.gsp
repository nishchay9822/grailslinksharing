<%--
  Created by IntelliJ IDEA.
  User: nischay
  Date: 19/03/21
  Time: 2:11 PM
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
<div class="message">${flash.meassgedeactivate}</div>
<div class="message">${flash.meassgeactivate}</div>
<div class=row>
    <div class="col-sm-12">
        <table   cellpadding="10px" border="2px">
            <tr cellpadding="10px">
                <th>Id</th>
                <th>Username</th>
                <th>Email</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Active</th>
                <th>Manage</th>
            </tr>
            <g:each in="${users}" var="us">
                <g:if test="${!us.isAdmin}">
            <tr width="10px"  >
                <td>${us.id}</td>
                <td>${us.userName}</td>
                <td>${us.email}</td>
                <td>${us.firstName}</td>
                <td>${us.lastName}</td>
                <td>${us.isActive}</td>
                <g:if test="${us.isActive}">
                <td><g:link controller="user" action="deactivateaccount" params="[userid: us.id]">Deactivate</g:link></td>
                </g:if>
                <g:else>
                    <td><g:link controller="user" action="activateaccount" params="[userid: us.id]">activate</g:link></td>
                </g:else>

            </tr>
                </g:if>
            </g:each>

        </table>
    </div>
</div>
</body>
</html>