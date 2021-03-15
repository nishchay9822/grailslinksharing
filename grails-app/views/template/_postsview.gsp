<body>
        <div class="card">
            <div class="card-body">
                <div class="container mt-6">
                    <p>${topicList.name}</p>
                    <span>${topicList.createdBy.userName}</span>
                    <div class="media border p-3">
                        <img src="img.png" alt="John Doe" class="mr-3 mt-3 rounded-circle" style="width:60px;">
                        <div class="media-body">
                             <p>${resource.description}</p>
                            <input type="radio" class="fa fa-star" id ="rating" value="1"/>
                            <input type="radio"  class="fa fa-star"id ="rating" value="2"/>
                            <input type="radio" class="fa fa-star"id ="rating" value="3"/>
                            <input type="radio"  class="fa fa-star"id ="rating" value="4"/>
                            <input type="radio"  class="fa fa-star"id ="rating" value="5"/>
                        </div>
                        <a href="#"><i class="fab fa-facebook-f"></i></a>
                        <a href="#"><i class="fab fa-twitter-square"></i></a>
                    </div>
                </div>
                <span>
                    <a href="#">Delete</a>&nbsp<a href="#">Edit</a>&nbsp<a href="#">Download</a>&nbsp<a href="#">View full site</a>
                </span>
            </div>
        </div>
       <script>
%{--        $(document).ready(function(){--}%
%{--              // console.log($("#name").val("nisjas"))--}%
%{--              $(".media-body").rating(function(vote,event){--}%
%{--                  myfunction();--}%
%{--                  //myfunction2();--}%
%{--              });--}%
%{--          });--}%

%{--          function myfunction(){--}%
%{--              // console.log("hi")--}%
%{--              //$("#ff").text("hi " + $("#name").val());--}%
%{--              //alert($("#name").val())--}%
%{--              $.ajax({--}%
%{--                  url: "http://localhost:8002/test/data",--}%
%{--                  data: {vote: vote}--}%
%{--                  success: function(result){--}%
%{--                      $("#ff").text(result.firstName + result.lastName);--}%

%{--                  },--}%
%{--                  error: function(){--}%
%{--                      alert("no user found")--}%
%{--                  }--}%
%{--              });--}%
%{--          };--}%

%{--          function myfunction2(){--}%
%{--              // console.log("hi")--}%
%{--              alert("function2 call")--}%
%{--          };--}%

        </script>
        </body>





