
%{--     <g:each in="${topiccount}" var="tc"--}%
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h3>Profile</h3>
            </div>
            <div class="panel-body">
                <table class="table table-striped" width="200px">

                    <tr>
                        <td>WELCOME</td>
                        <td>${session.user.userName}</td>
                        </tr>
<tr>
    <td>No. of topics:</td>
%{--    <td>{linksharingapp.Topic.countByCreatedBy(session.user.userName)}</td>--}%
    <td><ls:topicCount userId="${session.user.id}"></ls:topicCount></td>
</tr>
<tr>
    <td>No. of subscription :</td>
%{--    <td>{linksharingapp.Topic.countByCreatedBy(session.user.userName)}</td>--}%
    <td><ls:subscriptionCount userId="${session.user.id}"></ls:subscriptionCount></td>
</tr>
</table>
</div>
</div>
