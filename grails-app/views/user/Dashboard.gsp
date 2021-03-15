<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <asset:stylesheet href="nav.css"/>
    <script src="https://kit.fontawesome.com/a390992c2b.js" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</head>

<body>
<div class="row">
<g:render template="/template/LinkSharing"></g:render>
</div>

<div class="message">${flash.messagesuccess}</div>
<div class="row">
    <div class="col-md-5 pull-left">
        <g:render template="/template/userprofile"></g:render></div>


    <div class="col-md-7 pull-right"><g:render template="/template/Inbox"></g:render></div>
    </div>
    <div class="row">

        <div class="col-md-5 pull-left"><g:render template="/template/subscriptions"></g:render></div>


        <div class="col-md-5 pull-right"><g:render template="/template/trendingtopic"></g:render></div>
    </div>

<script>

    $(document).ready(function(){
        // console.log($("#name").val("nisjas"))
        $("#topicName").on("input", function(){
            myfunction();
            //myfunction2();
        });
        $("#searchbox").on("keydown", function(){
            myfunction2();
            //myfunction2();
        });
    });

    function myfunction(){
        // console.log("hi")
        //$("#ff").text("hi " + $("#name").val());
        //alert($("#name").val())
        $.ajax({
            url: "http://localhost:8091/topic/unique",
            data: {topicName: $("#topicName").val()},
            success: function(){
                alert("topic already exists! .Choose a different name")
            },
            error: function(){
            }
        });
    };
    function myfunction2(){
        // console.log("hi")
        //$("#ff").text("hi " + $("#name").val());
        //alert($("#name").val())
        $.ajax({
            method: 'post',
            url: "http://localhost:8091/topic/search",
            data: {search: $("#searchbox").val()},
            dataType: "JSON",
            success: function(result){
                $('#searchview').text(result.topic + result.userName + result.description),
                    $("#sr").hide('slow')

            },
            error: function(){
            }
        });
    };
</script>







</body>
</html>