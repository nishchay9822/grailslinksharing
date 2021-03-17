%{--<div class="modal fade" id="updateinfo" role="dialog">--}%
%{--    <div class="modal-dialog">--}%
%{--        <div class="modal-content">--}%

%{--            <!-- Modal Header -->--}%
%{--            <div class="modal-header">--}%
%{--                <h4 class="modal-title">update info</h4>--}%
%{--                <button type="button" class="close" data-dismiss="modal">&times;</button>--}%
%{--            </div>--}%

%{--            <!-- Modal body -->--}%
%{--            <div class="modal-body">--}%
<div class="card" style="border:  2px solid black;">
    <div class="card-header">Update your details</div>
    <div class="card-body">
                <div class="container">
                    <g:form controller="user" action="updateDetails" class="was-validated">
                        <div class="form-group">
                            <label for="fname">First Name:</label>
                            <input type="text" class="form-control" id="fname"
                                   placeholder="Enter your first name" name="firstName" required>

                            <div class="valid-feedback">Valid.</div>
                            <div class="invalid-feedback">Please fill out this field.</div>
                            <div class="user-present">
                            </div>
                            <div class="form-group">
                                <label for="Lname">Last Name:</label>
                                <input type="text" class="form-control" id="Lname" placeholder="Enter your last name"
                                       name="lastName" required>
                                <div class="valid-feedback">Valid.</div>
                                <div class="invalid-feedback">Please fill out this field.</div>
                            </div>
                            <div class="form-group">
                                <label for="uname">Username:</label>
                                <input type="text" class="form-control" id="uname" placeholder="Enter username"
                                       name="userName" required>
                                <div class="valid-feedback">Valid.</div>
                                <div class="invalid-feedback">Please fill out this field.</div>
                            </div>

                            <div class="form-group">
                                <label for="doc">photo</label>
                                <input type="file" id="doc" name="doc" accept="image/*">


                            </div>
                            <button type="submit" class="btn btn-primary">Update</button>

                    </g:form>
                </div>
                </div>
        </div>
</div>
%{--            </div>--}%
%{--        </div>--}%
%{--    </div>--}%
%{--</div>--}%