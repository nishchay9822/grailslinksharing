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
<div class="row">
    <div class="col-md-5 pull-left"><g:render template="/template/searchtrendtopics"</div>



    <div class="col-md-7 pull-right"><g:render template="/template/searchresult"/></div>
</div>
<div class="row">

    <div class="col-md-5 pull-left"><g:render template="/template/searchtopposts" /></div>



    <div class="col-md-5 pull-right"></div>
</div>
</body>