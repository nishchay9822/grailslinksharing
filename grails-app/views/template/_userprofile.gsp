
%{--     <g:each in="${topiccount}" var="tc"--}%
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h3>Profile</h3>

            </div>
            <div class="panel-body" style="border:  2px solid black;">
                <g:img dir="images/profilePic" class="pImage" file='${session.user.photo}' alt="Missing Image"  style="width:150px"/>
%{--                <img class="card-img-top" src="https://www.w3schools.com/bootstrap4/img_avatar1.png"--}%
%{--                     alt="John Doe" class="mr-3 mt-3 rounded-circle" style="width:60px">--}%
                <table class="table table-striped" >

                    <tr>
                        <td>WELCOME</td>
                        <td>${session.user.userName}</td>
                        </tr>
<tr>
    <td>No. of topics:</td>
%{--    <td>{linksharingapp.Topic.countByCreatedBy(session.user.userName)}</td>--}%
    <td><a    data-toggle="modal"
          data-target="#topiclist"><ls:topicCount userId="${session.user.id}"></ls:topicCount></a></td>
</tr>
<tr>
    <td>No. of subscription :</td>
%{--    <td>{linksharingapp.Topic.countByCreatedBy(session.user.userName)}</td>--}%
<td><a  data-toggle="modal"
        data-target="#sublist"><ls:subscriptionCount userId="${session.user.id}"></ls:subscriptionCount></a></td>
</tr>
</table>
</div>
</div>


<div class="modal fade" id="sublist" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title"> Subscriptions </h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>

            </div>
            <div class="modal-body">
                <table>
                    <tr>
                        <th>Topic</th>
                        <th>visibility</th>
                        <th></th>
                    </tr>
                    <tr>
                        <td>${}</td>
                        <td></td>
                        <td></td>
                    </tr>
                </table>
            </div>
        </div>

    </div>
</div>


%{--topic modal--}%

<div class="modal fade" id="topiclist" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title"> Topic </h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>

            </div>
            <div class="modal-body">
                <table>
                    <tr>
                        <th>Topic</th>
                        <th>visibility</th>
                        <th>Seriousness</th>
                    </tr>
                    <tr>
                        <td>${}</td>
                        <td></td>
                        <td></td>
                    </tr>
                </table>
            </div>
        </div>

    </div>
</div>

