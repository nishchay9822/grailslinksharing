
<head xmlns="http://www.w3.org/1999/html">
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
<div class="posts">
    <div class="card">
        <div class="card-header">Trending topics</div>
<g:each in="${topicList}"  var="tt">
        <div class="card-body">
            <div class="container mt-6">
%{--            <g:if test="${topicList}">--}%


                <div class="media border p-3">
%{--                    <img src="img.png" alt="John Doe" class="mr-3 mt-3 rounded-circle" style="width:60px;">--}%

                    <div class="media-body">

                        <div class="row">
                            <img class="card-img-top" src="https://www.w3schools.com/bootstrap4/img_avatar1.png"
                                 alt="John Doe" class="mr-3 mt-3 rounded-circle" style="width:60px">
                            <div class="col-sm-4">
                                <strong class="card-text post_textsize">${tt.createdBy.userName}</strong>
                            </div>
                        </div>
                        <div class="row">
                            <g:link controller="topic" action="topicshow" params="[topic: tt.name ]"  class="card-text post_textsize"><strong>${tt.name}</strong></g:link>
                            <div class="col-sm-4">

                                <g:link controller="dashboard" action="subscribetopic" class="card-text post_textsize">unsubscribe</g:link>
                            </div>


                        <div class="col-sm-5">
                            <strong class="post_textsize">Subscriptions</strong>
                            <p>
                                <ls:topicCount userId="${session.user.id}"></ls:topicCount>
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
                                <g:if test="${session.user.id == tt.createdBy.id}">
                                    <select class="form-select" aria-label="Default select example">
                                        <option selected>private</option>
                                        <option value="1">public</option>
                                    </select>
                                </g:if>
                            </div>
                            <div class="col-sm-4">
                                <div class="row">
                                    <div class="col-sm-4">
                                        <g:if test="${session.user.id == tt.createdBy.id}">
                                            <i class="fa fa-edit fa-lg" aria-hidden="true"></i>
                                        </g:if>
                                    </div>
                                    <div class="col-sm-4">
                                        <g:if test="${session.user.id == tt.createdBy.id}">
                                            <i class="fa fa-trash fa-lg" aria-hidden="true"></i>
                                        </g:if>
                                    </div>
                                    <div class="col-sm-4">
                                        <i class="fa fa-envelope fa-lg" aria-hidden="true"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <a href="#"><i class="fab fa-facebook-f"></i></a>
                        <a href="#"><i class="fab fa-twitter-square"></i></a>

                </div>

            </div>
            </div>
        </div>

                </g:each>

            <div class="card-footer">
            </div>
        </div>
    </div>
</div>

</body>
%{--                    <div class="container mt-6">--}%
%{--                        <div class="media border p-3">--}%
%{--                            <img src="img.png" alt="John Doe" class="mr-3 mt-3 rounded-circle" style="width:60px;">--}%
%{--                            <div class="media-body">--}%

%{--                            </div>--}%
%{--                        </div>--}%
%{--                    </div>--}%
%{--                    <div class="card-footer"><a href="#"><i class="fab fa-facebook-f"></i></a>--}%
%{--                        <a href="#"><i class="fab fa-twitter-square"></i></a>--}%
%{--                    </div>--}%
%{--                </div>--}%
%{--            </div>--}%



