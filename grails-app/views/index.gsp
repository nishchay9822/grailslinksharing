
<html>
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <asset:stylesheet src= "nav.css"/>
    <script src="https://kit.fontawesome.com/a390992c2b.js" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <title>Link sharing</title>
</head>
<body class="back">


<div class="nav-item">
    <br>
    <h2><i class="fas fa-link fa-2x"></i>LINK SHARING</h2>
    <div class="message">${flash.messagefail}</div>
    <div class="searchbar">
        <div class="search-container">
            <form action="/action_page.php">
                <input type="text" placeholder="Search for link" name="search">
                <button type="submit"> <i class="fas fa-search"></i> search</button>
            </form>
        </div>
    </div>
    <ul class="nav justify-content-end">
        <li class="nav-item">
            <button type="button" class="nav-link" style="color: pink;" data-toggle="modal"
                    data-target="#login">
                Login
            </button>
        </li>
        <li class="nav-item">
            <button type="button" class="nav-link" style="color: pink;" data-toggle="modal"
                    data-target="#NEWUSERMODAL">
                New user
            </button>
        </li>
    </ul>

</div>


<div class="modal" id="login">
    <div class="modal-dialog">
        <div class="modal-content">

            <!-- Modal Header -->
            <div class="modal-header">
                <h4 class="modal-title">LOGIN</h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>

            <!-- Modal body -->
            <div class="modal-body">
                <div class="container">

                    <g:form class="was-validated" controller="login" action="loginuser" method="POST" >
                        <div class="form-group">
                            <label for="uname">Username:</label>
                            <input type="text" class="form-control" id="uname" placeholder="Enter username"
                                   name="userName" value="${user?.userName}" required>

                            <div class="valid-feedback">Valid.</div>
                            <div class="invalid-feedback">Please fill out this field.</div>

                        </div>
                        <div class="form-group">
                            <label for="passwd">Password:</label>
                            <input type="password" class="form-control" id="passwd" placeholder="Enter password"
                                   name="password" value="${user?.password}" required>
                            <div class="valid-feedback">Valid.</div>
                            <div class="invalid-feedback">Please fill out this field.</div>
                        </div>
                        <div class="user-present"><button type="button" class="nav-link" data-toggle="modal"
                                                          data-target="#login"></button></div>
                        <h6><a name="forgotPasswordLink" class="btn btn-default" href="${createLink(controller: 'login', action: 'forgotPassword')}">Forgot
                        Password</a></h6>
                        <g:actionSubmit value='loginuser'/>
                    </g:form>
                </div>
            </div>



        </div>
    </div>
</div>




<div class="modal" id="NEWUSERMODAL">
    <div class="modal-dialog">
        <div class="modal-content">

            <!-- Modal Header -->
            <div class="modal-header">
                <h4 class="modal-title">New User Registeration</h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>

            <!-- Modal body -->
            <div class="modal-body">
                <div class="container">
                      <div class="message">${flash.message}</div>
                    <g:form class="was-validated" controller="user" action="save" method="POST" >
                        <div class="form-group">
                            <label for="firstName">First Name:</label>
                            <input type="text" class="form-control" id="firstName"
                                   placeholder="Enter your first name" name="firstName" required>

                            <div class="valid-feedback">Valid.</div>
                            <div class="invalid-feedback">Please fill out this field.</div>
%{--                            <div class="user-present"><button type="button" class="nav-link" data-toggle="modal"--}%
%{--                                                              data-target="#login">go to login</button></div>--}%
                        </div>
                        <div class="form-group">
                            <label for="lastName">Last Name:</label>
                            <input type="text" class="form-control" id="lastName" placeholder="Enter your last name"
                                   name="lastName" required>
                            <div class="valid-feedback">Valid.</div>
                            <div class="invalid-feedback">Please fill out this field.</div>
                        </div>
                        <div class="form-group">
                            <label for="email">Email:</label>
                            <input type="email" class="form-control" id="email" placeholder="Enter Email"
                                   name="email" required>
                            <div class="valid-feedback">Valid.</div>
                            <div class="invalid-feedback">Please fill out this field.</div>
                        </div>
                        <div class="form-group">
                            <label for="userName">Username:</label>
                            <input type="text" class="form-control" id="userName" placeholder="Enter username"
                                   name="userName" required>
                            <div class="valid-feedback">Valid.</div>
                            <div class="invalid-feedback">Please fill out this field.</div>
                        </div>
                        <div class="form-group">
                            <label for="password">Password:</label>
                            <input type="password" class="form-control" id="password" placeholder="Enter password"
                                   name="password" required>
                            <h5>Use at least one digit, one upper case and one special character</h5>
                            <div class="valid-feedback">Valid.</div>
                            <div class="invalid-feedback">Please fill out this field.</div>
                        </div>
                        <div class="form-group">
                            <label for="confirmPassword">Confirm Password:</label>
                            <input type="password" class="form-control" id="confirmPassword"
                                   placeholder="Enter password again" name="confirmPassword" required>
                            <div class="valid-feedback">Valid.</div>
                            <div class="invalid-feedback">Please fill out this field.</div>
                        </div>
                        <div class="form-group form-check">

                            <label for="photo">Select a photo</label>
                            <input type="file" class="form-control" id="photo"
                                   name="photo">
                        </div>
                        <g:actionSubmit value='save'/>
                    </g:form>
                </div>
            </div>
        </div>
    </div>
</div>
<br>
<div class="container">
    <div class="row">
        <div class="col-sm-6">
      <g:render template="/template/Recentposts"></g:render>
        </div>
        <div class="col-sm-6">
            <g:render template="/template/Topposts"></g:render>
        </div>

</div>
</div>

%{--<div class="recent">--}%

%{--</div>--}%
%{--<br>--}%
%{--<span class="posts">--}%

%{--</span>--}%

<script>

    $(document).ready(function(){
        // console.log($("#name").val("nisjas"))
        $("#userName").on("keydown", function(){
            myfunction();
            //myfunction2();
        });
    });

    function myfunction(){
        // console.log("hi")
        //$("#ff").text("hi " + $("#name").val());
        //alert($("#name").val())
        $.ajax({
            url: "http://localhost:8090/user/userlist",
            data: {userName: $("#userName").val()},
            success: function(){
                alert("You are already registered")
            },
            error: function(){
            }
        });
    };
</script>

</body>
</html>
