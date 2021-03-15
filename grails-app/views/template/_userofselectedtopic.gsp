
        <div class="posts">
            <div class="card">
                <div class="card-header">USER: ${topicname.name}</div>
                <div class="card-body">
                    <div class="container mt-6">
                        <div class="media border p-3">
                            <img src="img.png" alt="John Doe" class="mr-3 mt-3 rounded-circle" style="width:60px;">
                            <div class="media-body">
                                <div class="panel panel-primary">
                                    <div class="panel-heading">
                                        <h3>Profile</h3>
                                    </div>
                                    <div class="panel-body">
                                        <table class="table table-striped" width="100px">
                                            <tr>

                                                <td>${userName}</td>
                                            </tr>
                                            <tr>
                                                <td>No. of topics:</td>
                                                <td>No. of subscription :</td>
                                            </tr>
                                            <tr>
%{--                                                <td><ls:topicCount userId="${session.user.id}"></ls:topicCount></td>--}%

%{--                                                <td><ls:subscriptionCount userId="${session.user.id}"></ls:subscriptionCount></td>--}%
                                            </tr>

                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="container mt-6">
                        <div class="media border p-3">
                            <img src="img.png" alt="John Doe" class="mr-3 mt-3 rounded-circle" style="width:60px;">
                            <div class="media-body">
                                <div class="panel panel-primary">
                                    <div class="panel-heading">
                                        <h3>Profile</h3>
                                    </div>
                                    <div class="panel-body">
                                        <table class="table table-striped" width="100px">
                                            <tr>

                                                <td>${username}</td>
                                            </tr>
                                            <tr>
                                                <td>No. of topics:</td>
                                                <td>No. of subscription :</td>
                                            </tr>
                                            <tr>
                                                <td>${topicCountInfo}</td>

                                                <td>${subscriptionCountInfo}</td>
                                            </tr>

                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer"><a href="#"><i class="fab fa-facebook-f"></i></a>
                        <a href="#"><i class="fab fa-twitter-square"></i></a>
                    </div>
                </div>
            </div>
        </div>

