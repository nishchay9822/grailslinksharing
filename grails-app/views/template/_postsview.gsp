<html>
<head>


    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/rateYo/2.3.2/jquery.rateyo.min.css">
    <!-- Latest compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/rateYo/2.3.2/jquery.rateyo.min.js"></script>



</head>
<body>
        <div class="card" style="border:  2px solid black;">
            <div class="card-body">

                <div class="container mt-6" style="border:  2px solid black;">
                    <p>${topicList.name}</p>
                    <span>${topicList.createdBy.userName}</span>
                    <div class="media border p-3">
                        <g:img dir="images/profilePic" class="pImage" file='${session.user.photo}' alt="Missing Image"  style="width:150px"/>
%{--                        <img class="card-img-top" src="https://www.w3schools.com/bootstrap4/img_avatar1.png"--}%
%{--                             alt="John Doe" class="mr-3 mt-3 rounded-circle" style="width:60px">--}%
                        <div class="media-body">
                        <div id="rateYo" style="margin-left: 80px;"></div>

                        </div>
                        <div class="my-rating-4" data-rating="2.5"></div>
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


           $(function () {
               $("#rateYo").rateYo({
                   starWidth: "20px",
                   rating    : 1.6,
                   spacing   : "5px",
                   multiColor: {
                       "startColor": "#FF0000", //RED
                       "endColor"  : "#00FF00"  //GREEN
                   }
               });
           });
        </script>
        </body>

</html>



