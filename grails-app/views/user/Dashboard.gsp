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
    <script src="https://unpkg.com/vue"></script>
    <script src="https://unpkg.com/axios/dist/axios.min.js"></script>

</head>

<body>
<div class="row">
<g:render template="/template/LinkSharing"></g:render>
</div>

<div class="message">${flash.messagesuccess}</div>
<div class="message">${flash.messagepassupdated}</div>
<div class="message">${flash.messageresource}</div>
<div class="message">${flash.messagelink}</div>
<div class="message">${flash.messageontopiccreation}</div>
<div class="message">${flash.messagesub}</div>
<div class="row">
    <div class="col-md-5 pull-left">

        <g:render template="/template/userprofile"></g:render>

    </div>


    <div class="col-md-7 pull-right"><g:render template="/template/Inbox"></g:render></div>
    </div>
    <div class="row">

        <div class="col-md-5 pull-left"><g:render template="/template/subscriptions"></g:render></div>


        <div class="col-md-7 pull-right"><g:render template="/template/trendingtopic"></g:render></div>
    </div>

%{--<div id="app">--}%
%{--    <table border="1">--}%
%{--        <thead>--}%
%{--        <tr>--}%
%{--            <th>Last Name</th>--}%
%{--            <th>First Name</th>--}%
%{--        </tr>--}%
%{--        </thead>--}%
%{--        <tbody>--}%
%{--        <tr--}%
%{--            <td>{{ person.lastName }}</td>--}%
%{--            <td>{{ person.firstName }}</td>--}%
%{--        </tr>--}%
%{--        </tbody>--}%
%{--    </table>--}%
%{--    <div id="pagination">--}%
%{--        <span v-for="pageNumber in numberOfPages">--}%
%{--            <a href="#" @click="fetchData(pageNumber-1)">{{ pageNumber }}</a>--}%
%{--        </span>--}%
%{--    </div>--}%
%{--</div>--}%
<script>

    $(document).ready(function(){
        // console.log($("#name").val("nisjas"))
        $("#topicName").on("input", function(){
            myfunction();
            //myfunction2();
        });
        $("#searchbox").on("keydown", function(){
            var search = $("#searchbox").val()
            myfunction2(search);
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
    function myfunction2(search){
        // console.log("hi")
        //$("#ff").text("hi " + $("#name").val());
        //alert($("#name").val())
        $.ajax({
            method: 'post',
            url: "http://localhost:8091/topic/search",
            data: {"search": search},
            dataType: "JSON",
            success: function(result){
                $('#searchview').text(result.topic + result.topicname),
                    $("#sr").hide('slow')

            },
        });
    };

    // var app = new Vue({
    //     el: '#app',
    //     data: {
    //         listOfPerson: [],
    //         numberOfPages: 0,
    //         max: 5
    //     },
    //     methods: {
    //         fetchData: function (pageNumber) {
    //             axios.get('/person/list', {
    //                 params:{
    //                     pageNumber:pageNumber,
    //                     max:this.max
    //                 }
    //             })
    //                 .then(function (response) {
    //                     app.listOfPerson = response.data.listOfPerson;
    //                     app.numberOfPages = response.data.numberOfPages;
    //                 })
    //                 .catch(function (error) {
    //                     console.log(error);
    //                 });
    //         }
    //     },
    //     created: function () {
    //         this.fetchData(0);
    //     }
    // })
</script>







</body>
</html>