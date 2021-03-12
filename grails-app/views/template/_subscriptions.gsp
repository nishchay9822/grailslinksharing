
    <div class="posts">
        <div class="card">
            <div class="card-header">Subscriptions</div>
            <div class="card-body">
                <div class="container mt-6">
                    <div class="media border p-3">
%{--                        <img src="img.png" alt="John Doe" class="mr-3 mt-3 rounded-circle" style="width:60px;">--}%
                        <div class="media-body">
                            <div class="row">
                                <img class="card-img-top" src="https://www.w3schools.com/bootstrap4/img_avatar1.png"
                                     alt="John Doe" class="mr-3 mt-3 rounded-circle" style="width:60px">
                            </div>
                            <div class="row">
                                <div class="col-sm-4">
                                    <strong class="card-text post_textsize">topic.user.userName</strong>
                                    <g:link controller="dashboard" action="" class="card-text post_textsize">unsubscribe</g:link>
                                </div>


                                <div class="col-sm-5">
                                    <strong class="post_textsize">Subscriptions</strong>
                                    <p>
                                        50
                                    </p>
                                </div>
                                <div class="col-sm-3">
                                    <strong class="post_textsize">post</strong>
                                    <p>
                                        50
                                    </p>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-sm-4">
                                    <select class="form-select" aria-label="Default select example">
                                        <option selected>Serious</option>
                                        <option value="1">Not Serious</option>
                                    </select>
                                </div>
                                <div class="col-sm-4">
                                    <g:if test="{session.user.id == topic.user.id}">
                                        <select class="form-select" aria-label="Default select example">
                                            <option selected>private</option>
                                            <option value="1">public</option>
                                        </select>
                                    </g:if>
                                </div>
                                <div class="col-sm-4">
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <g:if test="{session.user.id == topic.user.id}">
                                                <i class="fa fa-edit fa-lg" aria-hidden="true"></i>
                                            </g:if>
                                        </div>
                                        <div class="col-sm-4">
                                            <g:if test="{session.user.id == topic.user.id}">
                                                <i class="fa fa-trash fa-lg" aria-hidden="true"></i>
                                            </g:if>
                                        </div>
                                        <div class="col-sm-4">
                                            <i class="fa fa-envelope fa-lg" aria-hidden="true"></i>
                                        </div>
                                    </div>
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










</div>
