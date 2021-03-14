


    <div class="posts">
        <div class="card">
            <div class="card-header">Inbox</div>
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
                                <span>
                                    <a href="#">Mark as read</a>&nbsp<a href="#">View post</a>&nbsp<a href="#">Download</a>&nbsp<a
                                        href="#">View full site</a>
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
        </div>
            </g:each>
        </div>


            </div>





