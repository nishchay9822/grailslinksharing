
<html>

<body>
<div class="recent">
    <div class="card" style="border:  2px solid black;">
        <div class="card-header">Recent Shares</div>
<g:each in="${recentList}"  var="rl">
%{--    <g:each in="${resourceList}" var="res">--}%
        <div class="card-body ">
            <div class="container mt-3" style="border:  2px solid black;">
                <div class="media border p-3">
%{--                    <g:img src="img.png" alt="John Doe" class="mr-3 mt-3 rounded-circle" style="width:60px"/>--}%
                    <div class="media-body">
                        <div class="container-sm">
                            <span class="topic"><a href="#">${rl.name}</a></span>
                            <h6>${rl.createdBy.userName}</h6>
                            <p>${rl.resources.description}</p>

                        </div>

                    </div>
                </div>
            </div>
            <a href="#"><i class="fab fa-facebook-f fa-2x"></i></a>
            <a href="#"><i class="fab fa-twitter-square fa-2x"></i></a>
            <div class="view-post"><g:link controller="resource" action="postview">View post</g:link>
            </div>

        </div>
%{--    </g:each>--}%
</g:each>


    </div>
</div>


</body>
</html>

