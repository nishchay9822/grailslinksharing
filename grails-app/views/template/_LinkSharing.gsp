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
<div class="container">
    <br>
    <h2><i class="fas fa-link fa-2x"></i>LINK SHARING</h2>

    <ul class="nav justify-content-end">
        <li class="nav-item">
            <button type="button" class="nav-link" style="color: pink;" data-toggle="modal"
                    data-target="#shareDocs"><i class="fas fa-file-upload fa-2x"></i>
            </button>
        </li>
        &nbsp
        <li class="nav-item">
            <button type="button" class="nav-link" style="color: pink;" data-toggle="modal"
                    data-target="#createTopic"><i class="fas fa-greater-than fa-2x"></i>
            </button>
        </li>
        &nbsp
        <li class="nav-item">
            <button type="button" class="nav-link" style="color: pink;" data-toggle="modal"
                    data-target="#shareLink"><i class="fas fa-link fa-2x"></i>
            </button>
        </li>
        &nbsp
        <li class="nav-item">
            <button type="button" class="nav-link" style="color: pink;" data-toggle="modal"
                    data-target="#sendinvite"><i class="fas fa-share fa-2x"></i>
            </button>
        </li>
        &nbsp
        <li class="nav-item">
            <div class="searchbar">
                <div class="search-container">

                        <input type="text" placeholder="Search topic" name="search" id="searchbox">
                        <button type="submit" id="search"> <i class="fas fa-search"></i> search</button>
                </div>
            </div>
        </li>
        &nbsp
        <li class="nav-item">

            %{--            <select name="USERNAME" >username--}%
            %{--                <option name="profile" value="public">Profile</option>--}%
            %{--                <option name="posts" value="private">Posts</option>--}%
            %{--                <option name="Topic" value="public">Topic</option>--}%
            %{--                <option name="Users" value="private">Users</option>--}%
            %{--                <option name="Logout" value=""></option>--}%

            %{--            </select>--}%
            <div class="dropdown">
                <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
                    Hi! ${session.user.userName}
                </button>
                <div class="dropdown-menu">
                    <g:link controller="user" action="profile">Profile</g:link><br>
                    <g:link controller="user" action="index">Users</g:link><br>
                    <g:link controller="user" action="index">Topics</g:link><br>
                    <g:link controller="user" action="index">Posts</g:link><br>
                    <g:link controller="user" action="index">logout</g:link><br>
                </div>
            </div>
        </li>
        &nbsp
        &nbsp
    </ul>

</div>

<!-- MODAL FOR CREATE TOPIC -->



<div class="modal fade" id="createTopic" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Create Topic</h4>
            </div>
            <div class="modal-body">
                <g:form controller="topic"  action="save" method="POST">
                    <div class="form-group">
                        <label for="topicName">
                            Topic-Name</label>
                        <input type="text" class="form-control" id="topicName"
                               placeholder="Enter a topic name" name="name" value="${topic?.name}" >
                        <g:hiddenField name="createdBy" value="${session.user}"/>
                    </div>
                    <h5>Visibility</h5>
                    <select name="visibility" required>
                        <option name="public" value="PUBLIC">Public</option>
                        <option name="private" value="PRIVATE">Private</option>
                    </select>



                        <button type="submit" class="btn btn-primary btn-block">Save</button>
                        <button type="button" class="btn btn-primary btn-block" data-dismiss="modal">Cancel
                        </button>
                </g:form>
            </div>
        </div>

    </div>
</div>


<div class="modal fade" id="shareLink" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">shareLink</h4>
            </div>
            <div class="modal-body">
                <g:form controller="resource"  action="createLinkResource" >

                    <div class="form-group">
                        <label for="link">Link</label>
                        <input type="url" class="form-control" id="link" placeholder="provide a valid link"
                               name="url" value="${res?.url}">
                    </div>
                    <div class="form-group">
                        <label for="desc">Description</label>
                        <textarea rows="3" cols="29" size="30" id="desc" placeholder="provide description"
                                  name="description" required value="${res?.description}"></textarea>

                    </div>
                    <div class="form-group">
                        <h6>Topic</h6>
                        <g:select name="topicSaved" from="${topics}"
                                  class="dropdown-toggle btn btn-default col-sm-8" value="${res?.topicSaved}"/>
                    </div>


                <button type="submit" class="btn btn-primary btn-block">Share</button>
                <button type="button" class="btn btn-primary btn-block" data-dismiss="modal">Cancel
                </button>

                </g:form>



            </div>

        </div>

    </div>
</div>


<!-- MODAL FOR SHARE DOCUMENT -->

<div class="modal fade" id="shareDocs" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Share Documents</h4>
            </div>
            <div class="modal-body">
                <g:form  controller="resource"  action="createFileResource">

                    <div class="form-group">
                        <label for="doc">Browse Document:</label>
                        <input type="file" id="doc" name="filePath" accept="image/*" value="${res?.filePath}">
                    </div>
                    <div class="form-group">
                        <label for="description">Description</label>
                        <textarea rows="3" cols="29" size="30" id="description" placeholder="provide description"
                                  name="description" required value="${res?.description}"></textarea>

                    </div>
                    <div class="form-group">
                        <h6>Topic</h6>
                        <g:select name="topicSaved" from="${topics}"
                                  class="dropdown-toggle btn btn-default col-sm-8" value="${res?.topicSaved}"/>
                    </div>


                <button type="submit" class="btn btn-primary btn-block">Share</button>
                <button type="button" class="btn btn-primary btn-block" data-dismiss="modal">Cancel
                </button>
                </g:form>





            </div>

        </div>

    </div>
</div>



<!-- MODAL FOR SEND INVITATION -->


<div class="modal fade" id="sendinvite" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Send Invitation</h4>
            </div>
            <div class="modal-body">
                <g:form name="create_topic" controller="login" method="post" action="sendInvitation">

                    <div class="form-group">
                        <label for="email">Email:</label>
                        <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
                    </div>

                    <div class="form-group">
                        <h6>Topic</h6>
                        <g:select name="topic" from="${linksharingapp.Topic.list().name}"
                                  class="dropdown-toggle btn btn-default col-sm-8" value="topic?.topic"/>
                    </div>


                    <button type="submit" class="btn btn-primary btn-block">Share invite</button>
                    <button type="button" class="btn btn-primary btn-block" data-dismiss="modal">Cancel
                    </button>

                    </g:form>



            </div>

        </div>

    </div>
</div>

%{--<script>--}%

%{--    $(document).ready(function(){--}%
%{--        // console.log($("#name").val("nisjas"))--}%
%{--        $("#topicName").on("input", function(){--}%
%{--            myfunction();--}%
%{--            //myfunction2();--}%
%{--        });--}%
%{--        $("#searchbox").on("input", function(){--}%
%{--            myfunction2();--}%
%{--            //myfunction2();--}%
%{--        });--}%
%{--    });--}%

%{--    function myfunction(){--}%
%{--        // console.log("hi")--}%
%{--        //$("#ff").text("hi " + $("#name").val());--}%
%{--        //alert($("#name").val())--}%
%{--        $.ajax({--}%
%{--            url: "http://localhost:8091/topic/unique",--}%
%{--            data: {topicName: $("#topicName").val()},--}%
%{--            success: function(){--}%
%{--                alert("topic already exists! .Choose a different name")--}%
%{--            },--}%
%{--            error: function(){--}%
%{--            }--}%
%{--        });--}%
%{--    };--}%
%{--    function myfunction(){--}%
%{--        // console.log("hi")--}%
%{--        //$("#ff").text("hi " + $("#name").val());--}%
%{--        //alert($("#name").val())--}%
%{--        $.ajax({--}%
%{--            url: "http://localhost:8091/topic/search",--}%
%{--            data: {search: $("#searchbox").val()},--}%
%{--            dataType: JSON,--}%
%{--            success: function(result){--}%
%{--                $()--}%

%{--            },--}%
%{--            error: function(){--}%
%{--            }--}%
%{--        });--}%
%{--    };--}%
%{--</script>--}%

</body>
