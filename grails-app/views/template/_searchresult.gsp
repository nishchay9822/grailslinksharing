


<div class="posts" style=" overflow: scroll;">
    <div class="card" style="border:  2px solid black; ">
        <div class="card-header">Inbox</div>
        <g:each in="${topic}"  var="tt">
            <div class="card-body">
                <div class="container mt-6" style="border:  2px solid black;">
                    %{--            <g:if test="${topicList}">--}%


                    <div class="media border p-3">
                        %{--                    <img src="img.png" alt="John Doe" class="mr-3 mt-3 rounded-circle" style="width:60px;">--}%

                        <div class="media-body">

                            <div class="row">
                                <img class="card-img-top" src="https://www.w3schools.com/bootstrap4/img_avatar1.png"
                                     alt="John Doe" class="mr-3 mt-3 rounded-circle" style="width:60px">
                                <div class="col-sm-4 pull-left">
                                    <strong class="card-text post_textsize">${tt.createdBy.userName}</strong>

                                </div>
                                <div class="col-sm-6 pull-right">
                                    <g:link controller="topic" action="topicshow"  params="[tName: tt.id]">${tt.name}</g:link>

                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-5 pull left">
                                    <p>${tt.resources.description}</p>
                                </div>
                                <div class="row">

                                    <a href="#">Mark as read</a>&nbsp<g:link controller="resource" action="postview" params="[resource: tt.resources.id , topicId: tt.id]">View post</g:link>&nbsp<a href="#">Download</a>&nbsp<a
                                        href="#">View full site</a>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </g:each>
    </div>


</div>





