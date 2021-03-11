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
<g:render template="/template/LinkSharing"></g:render>
<div class="row">
    <div class="col-md-5 pull-left">
        <g:render template="/template/userprofile"></g:render></div>


    <div class="col-md-7 pull-right"><g:render template="/template/Inbox"></g:render></div>
    </div>
    <div class="row">

        <div class="col-md-5 pull-left"><g:render template="/template/subscriptions"></g:render></div>


        <div class="col-md-5 pull-right"><g:render template="/template/trendingtopic"></g:render></div>
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
                <g:form name="create_topic" controller="topic"  action="save" method="POST">
                    <div class="form-group">
                        <label for="topicname">
                            Topic-Name</label>
                            <input type="text" class="form-control" id="topicname"
                                   placeholder="Enter a topic name" name="name" value="${topic?.name}" >
                    <g:hiddenField name="createdBy" value="${session.user}"/>
                    </div>
                    <h5>Visibility</h5>
                    <select name="visibility" required>
                        <option name="public" value="PUBLIC">Public</option>
                        <option name="private" value="PRIVATE">Private</option>
                    </select>

                    <td colspan="2" class="col-lg-3">

                        <button type="submit" class="btn btn-primary btn-block">Save</button>
                        <button type="submit" class="btn btn-primary btn-block">Cancel
                        </button>
                    </td>
                </g:form>
            </div>
        </div>

    </div>
</div>

<!-- MODAL FOR SHARE LINK -->


<div class="modal fade" id="shareLink" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">shareLink</h4>
            </div>
            <div class="modal-body">
                <g:form name="create_topic" controller="topic" method="post" action="createTopic">

                    <div class="form-group">
                        <label for="link">Link</label>
                        <input type="text" class="form-control" id="link" placeholder="provide a valid link"
                               name="link">
                    </div>
                    <div class="form-group">
                        <label for="desc">Description</label>
                        <textarea rows="3" cols="29" size="30" id="desc" placeholder="provide description"
                                  name="linkDescription" required></textarea>

                    </div>
                    <div class="form-group">
                        <h6>Topic</h6>
                        <select name="" style="min-width: 285px">
                            <option></option>
                        </select>
                    </div>

                    <td colspan="2" class="col-lg-3">
                        <submitButton name="submit" class="btn btn-primary btn-block" value="save">Share
                        </submitButton>
                        <submitButton name="submit" class="btn btn-primary btn-block" value="save">Cancel
                        </submitButton>
                    </td>


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
                <form name="create_topic" controller="topic" method="post" action="createTopic">

                    <div class="form-group">
                        <label for="doc">Browse Document:</label>
                        <input type="file" id="doc" name="doc" accept="image/*">
                    </div>
                    <div class="form-group">
                        <label for="description">Description</label>
                        <textarea rows="3" cols="29" size="30" id="description" placeholder="provide description"
                                  name="linkDescription" required></textarea>

                    </div>
                    <div class="form-group">
                        <h6>Topic</h6>
                        <select name="" style="min-width: 285px">
                            <option></option>
                        </select>
                    </div>

                    <td colspan="2" class="col-lg-3">
                        <submitButton name="submit" class="btn btn-primary btn-block" value="save">Share
                        </submitButton>
                        <submitButton name="submit" class="btn btn-primary btn-block" value="save">Cancel
                        </submitButton>
                    </td>


                </form>


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
                <h4 class="modal-title">Send Invittation</h4>
            </div>
            <div class="modal-body">
                <form name="create_topic" controller="topic" method="post" action="createTopic">

                    <div class="form-group">
                        <label for="email">Email:</label>
                        <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
                    </div>

                    <div class="form-group">
                        <h6>Topic</h6>
                        <select name="" style="min-width: 285px">
                            <option></option>
                        </select>
                    </div>

                    <td colspan="2" class="col-lg-3">
                        <submitButton name="submit" class="btn btn-primary btn-block" value="save">Share
                        </submitButton>
                        <submitButton name="submit" class="btn btn-primary btn-block" value="save">Cancel
                        </submitButton>
                    </td>


                </form>


            </div>

        </div>

    </div>
</div>




</body>
</html>