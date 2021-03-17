<html>
<head>
    <asset:stylesheet src= "nav.css"/>
    <script src="https://kit.fontawesome.com/a390992c2b.js" crossorigin="anonymous"></script>
</head>
<body>

<div class="posts">
    <div class="card" style="border:  2px solid black;">
        <div class="card-header">TOP POSTS
            <span class="filter" >

                <select name="top posts" id="top" from="">
                    <option value="today">today</option>
                    <option value="1 week">1 week</option>
                    <option value="1 month">1 month</option>
                    <option value="1 year">1 year</option>
                </select>
            </span>
        </div>
        <div class="card-body">
            <div class="container mt-3" style="border:  2px solid black;">
                <div class="media border p-3">
                    <g:img src="img.png" alt="John Doe" class="mr-3 mt-3 rounded-circle" style="width:60px"/>
                    <div class="media-body">
                        <div class="container-sm">
                            <span class="posttime">lastpostime@12:00</span>
                            <span class="topic"><a href="#">topic</a></span>
                            <h6>username</h6>
                            <p>recent share data will be shown here</p>

                        </div>

                    </div>
                </div>
            </div>
            <span>
                <a href="#">Mark as read</a>&nbsp<a href="#">View post</a>&nbsp<a href="#">Download</a>&nbsp<a
                    href="#">View full site</a>
            </span>
            <div class="card-footer"><a href="#"><i class="fab fa-facebook-f fa-2x"></i></a>
                <a href="#"><i class="fab fa-twitter-square fa-2x"></i></a>
            </div>
        </div>
    </div>
</div>


</body>
</html>