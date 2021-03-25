<body>
    <div class="posts">
        <div class="card" style="border:  2px solid black;">
            <div class="card-header" >Subscriptions</div>
        <g:each in="${sub5list}"  var="tt">
            <div class="card-body">
                <div class="container mt-6" style="border:  2px solid black;">
                    %{--            <g:if test="${topicList}">--}%


                    <div class="media border p-3">
                        %{--                    <img src="img.png" alt="John Doe" class="mr-3 mt-3 rounded-circle" style="width:60px;">--}%

                        <div class="media-body">

                            <div class="row">
                                <g:img dir="images/profilePic" class="pImage" file='${tt.createdBy.photo}' alt="Missing Image"  style="width:60px"/>
%{--                                <img class="card-img-top" src="https://www.w3schools.com/bootstrap4/img_avatar1.png"--}%
%{--                                     alt="John Doe" class="mr-3 mt-3 rounded-circle" style="width:60px">--}%
                                <div class="col-sm-4">
                                    <strong class="card-text post_textsize">${tt.createdBy.userName}</strong>
                                </div>
                            </div>
                            <div class="row">
                                <g:link controller="topic" action="topicshow"  params="[tName: tt.id]">${tt.name}</g:link>
                                <div class="col-sm-4">

                                    <a class="unsubscribe${tt.id}" onclick="unsub(${tt.id})">unsubscribe</a>
                                </div>


                                <div class="col-sm-5">
                                    <strong class="post_textsize">Subscriptions</strong>
                                    <p>
                                        <ls:subscriptionCount topicId="${tt.id}"></ls:subscriptionCount>
                                    </p>
                                </div>
                                <div class="col-sm-2">
                                    <strong class="post_textsize">post</strong>
                                    <p>
                                        <ls:resourceCount topicId="${tt.id}"></ls:resourceCount>
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
                    %{--</g:if>--}%
                    %{--<g:else>hello</g:else>--}%
                </div>
            </div>

        </g:each>
        </div>
        </div>
    <script>
    function unsub(id)
{
    $.ajax({
        method: 'post',
        url: "http://localhost:8091/subscription/delete",
        data: {"topicid": id},
        datatype: "JSON",
        success: function (result) {
            $(".unsubscribe" + id).hide();
            $(".subscribe" + id).text("Unsubscribe");
        },
    });
};
    </script>
    </body>










