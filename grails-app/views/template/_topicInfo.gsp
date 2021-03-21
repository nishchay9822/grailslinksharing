

        <div class="posts">
            <div class="card" style="border:  2px solid black;">
                <div class="card-header">Topic : ${topicname.name}</div>
                <div class="card-body">
                    <div class="container mt-6" style="border:  2px solid black;">
                        <div class="media border p-3">
                            <div class="media-body">
                                <div class="panel panel-primary">
                                    <div class="panel-heading">
                                        <h3>Profile</h3>
                                    </div>
                                    <div class="panel-body">
                                        <table class="table table-striped" width="100px">
                                            <tr>

                                                <td>${session.user.userName}</td>
                                            </tr>
                                            <tr>
                                                <td>No. of posts:</td>
                                                <td>No. of subscription:</td>
                                            </tr>
                                            <tr>
                                                <td><ls:resourceCount topicId="${topicname.id}"></ls:resourceCount></td>

                                                <td><ls:subscriptionCount userId="${session.user.id}"></ls:subscriptionCount></td>
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
