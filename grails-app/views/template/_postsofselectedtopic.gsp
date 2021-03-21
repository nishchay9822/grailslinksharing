<!-- TOPIC SHOW PAGE
   POSTS OF 'TOPIC ' TEMPLATE -->

        <div class="posts">
            <div class="card" style="border:  2px solid black;">
                <div class="card-header">POSTS: ${topicname.name}
                    <div class="searchbar">
                        <div class="search-container">
                            <form action="/action_page.php">
                                <input type="text" placeholder="Search for link" name="search">
                                <button type="submit"> <i class="fas fa-search"></i> search</button>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <div class="container mt-6" style="border:  2px solid black;">
                        <div class="media border p-3">
                            <g:img dir="images/profilePic" class="pImage" file='${topicname.createdBy.photo}' alt="Missing Image"  style="width:60px"/>
                            <div class="media-body">


                            </div>
                        </div>
                    </div>
                    <div class="container mt-6">
                        <div class="media border p-3">
                            <img src="img.png" alt="John Doe" class="mr-3 mt-3 rounded-circle" style="width:60px;">
                            <div class="media-body">


                            </div>
                        </div>
                    </div>
                    <span>
                        <a href="#">Mark as read</a>&nbsp<a href="#">View post</a>&nbsp<a href="#">Download</a>&nbsp<a
                            href="#">View full site</a>
                    </span>
                    <div class="card-footer"><a href="#"><i class="fab fa-facebook-f"></i></a>
                        <a href="#"><i class="fab fa-twitter-square"></i></a>
                    </div>
                </div>
            </div>
        </div>

