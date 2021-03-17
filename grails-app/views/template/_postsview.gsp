
<body>
        <div class="card" style="border:  2px solid black;">
            <div class="card-body">
                <div class="container mt-6" style="border:  2px solid black;">
                    <p>${topicList.name}</p>
                    <span>${topicList.createdBy.userName}</span>
                    <div class="media border p-3">
                        <img class="card-img-top" src="https://www.w3schools.com/bootstrap4/img_avatar1.png"
                             alt="John Doe" class="mr-3 mt-3 rounded-circle" style="width:60px">
                        <div class="media-body">
                              <p>${resource.description}</p>
                            <span class="fa fa-star" id="1" onclick="star(1)"></span>
                            <span class="fa fa-star" id="2" onclick="star(2)"></span>
                            <span class="fa fa-star" id="3" onclick="star(3)"></span>
                            <span class="fa fa-star" id="4" onclick="star(4)"></span>
                            <span class="fa fa-star" id="5" onclick="star(5)"></span>
                        </div>
                        <a href="#"><i class="fab fa-facebook-f"></i></a>
                        <a href="#"><i class="fab fa-twitter-square"></i></a>
                    </div>
                </div>
                <p>
                    <a href="#">Delete</a>&nbsp<a href="#">Edit</a>&nbsp<a href="#">Download</a>&nbsp<a href="#">View full site</a>
                </p>
            </div>
        </div>
       <script>

function star(val)
{
    $.ajax({
        method: 'post',
        url: "http://localhost:8091/resourcerating/rating",
        data: {rate: val,  resource: ${resource.id}} ,
        datatype: "JSON",
        success: function (result) {
         $("span" .eq(result)).each(function()
            {
              $("this").removeClass("fa fa-star").addClass("fa fa-star checked")
            });
        },
    });
};

        </script>
        </body>





