<div class="container">
    <br>
    <h2><i class="fas fa-link fa-2x"></i>LINK SHARING</h2>

    <ul class="nav justify-content-end">
        <li class="nav-item">
            <button type="button" class="nav-link" style="color: pink;" data-toggle="modal"
                    data-target="#shareDocs"><i class="fas fa-file-upload fa-2x"></i>
            </button>
        </li>
        &nbsp
        <li class="nav-item">
            <button type="button" class="nav-link" style="color: pink;" data-toggle="modal"
                    data-target="#createTopic"><i class="fas fa-greater-than fa-2x"></i>
            </button>
        </li>
        &nbsp
        <li class="nav-item">
            <button type="button" class="nav-link" style="color: pink;" data-toggle="modal"
                    data-target="#shareLink"><i class="fas fa-link fa-2x"></i>
            </button>
        </li>
        &nbsp
        <li class="nav-item">
            <button type="button" class="nav-link" style="color: pink;" data-toggle="modal"
                    data-target="#sendinvite"><i class="fas fa-share fa-2x"></i>
            </button>
        </li>
        &nbsp
        <li class="nav-item">
            <div class="searchbar">
                <div class="search-container">
                    <g:form action="/action_page.php">
                        <input type="text" placeholder="Search for link" name="search">
                        <button type="submit"> <i class="fas fa-search"></i> search</button>
                    </g:form>
                </div>
            </div>
        </li>
        &nbsp
        <li class="nav-item">

            %{--            <select name="USERNAME" >username--}%
            %{--                <option name="profile" value="public">Profile</option>--}%
            %{--                <option name="posts" value="private">Posts</option>--}%
            %{--                <option name="Topic" value="public">Topic</option>--}%
            %{--                <option name="Users" value="private">Users</option>--}%
            %{--                <option name="Logout" value=""></option>--}%

            %{--            </select>--}%
            <div class="dropdown">
                <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
                    Hi! ${session.user.userName}
                </button>
                <div class="dropdown-menu">
                    <g:link controller="user" action="profile">Profile</g:link><br>
                    <g:link controller="user" action="index">Users</g:link><br>
                    <g:link controller="user" action="index">Topics</g:link><br>
                    <g:link controller="user" action="index">Posts</g:link><br>
                    <g:link controller="user" action="index">logout</g:link><br>
                </div>
            </div>
        </li>
        &nbsp
        &nbsp
    </ul>

</div>