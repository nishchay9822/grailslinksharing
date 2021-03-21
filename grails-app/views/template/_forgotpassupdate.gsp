<%@ page import="linksharingapp.User" %>
<body>
<div class="card" style="border:  2px solid black;">
    <div class="message" >${flash.messagepassupdated}</div>
    <div class="card-header">Change Password</div>
    <div class="card-body">
        <div class="container">
            <g:form controller="login" action="changePass" params="${[user: user.id]}" class="was-validated">

                <div class="form-group">
                    <label for="pwd">Password:</label>
                    <input type="password" class="form-control" id="pwd" placeholder="Enter password"
                           name="password" required=""/>
                    <h5>Use at least one digit, one upper case and one special character</h5>
                    <div class="valid-feedback">Valid.</div>
                    <div class="invalid-feedback">Please fill out this field.</div>
                </div>
                <div class="form-group">
                    <label for="cpwd">Confirm Password:</label>
                    <input type="password" class="form-control" id="cpwd"
                           placeholder="Enter password again" name="confirmPassword" required>
                    <div class="valid-feedback">Valid.</div>
                    <div class="invalid-feedback">Please fill out this field.</div>
                </div>

                <button type="submit" class="btn btn-primary">Update</button>
            </g:form>
        </div>
    </div>
</div>

</body>