<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>

<body>
    <div class="posts" style=" overflow: scroll;">
        <div class="card" style="border:  2px solid black; ">
            <div class="card-header">Inbox</div>
        <div style="overflow-x: scroll; height: 1000px">
            <g:each in="${subList}"  var="sb">
                <g:each in="${sb.topic.resources}" var="tt">

            <div class="card-body card${tt.topic.id}" >
                <div class="container mt-6" style="border:  2px solid black;">
                    %{--            <g:if test="${topicList}">--}%


                    <div class="media border p-3">
                        %{--                    <img src="img.png" alt="John Doe" class="mr-3 mt-3 rounded-circle" style="width:60px;">--}%

                        <div class="media-body">

                            <div class="row">
                                <g:img dir="images/profilePic" class="pImage" file='${tt.createdBy.photo}' alt="Missing Image"  style="width:150px"/>
                                <div class="col-sm-4 pull-left">
                                    <strong class="card-text post_textsize">${tt.createdBy.userName}</strong>

                                </div>
                                <div class="col-sm-6 pull-right">
                                    <g:link controller="topic" action="topicshow"  params="[tName: tt.topic.id]">${tt.topic.name}</g:link>

                                </div>
                             </div>
                                <div class="row">
                                    <div class="col-sm-5 pull left">
                                <p>${tt.description}</p>
                                    </div>
                                <div class="row">

                                    <a onclick="read(${tt.topic.id}">Mark as read</a>&nbsp<g:link controller="resource" action="postview" params="[resource: tt.id , topicId: tt.topic.id]">View post</g:link>&nbsp<a href="#">Download</a>&nbsp<a
                                        href="http://${tt.linkResources.url[0]}" target="_blank">View full site</a>

                                </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

     </g:each>
            </g:each>
        </div>
        </div>


            </div>
<script>
    function read(id)
    {
        $.ajax({
            method: 'post',
            url: "http://localhost:8091/readingitem/read",
            data: {"topicid": id},
            datatype: "JSON",
            success: function (result) {
                $(".card" + id).hide('slow')
            },
        });
    };
</script>

</body>


