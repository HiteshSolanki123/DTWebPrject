<jsp:include page="Header.jsp"></jsp:include>
        <h1>Create an Account</h1>
         <form class="form-horizontal" action="/examples/actions/confirmation.php" method="post">
        <div class="form-group">
            <label for="inputName" class="control-label col-xs-2">Name</label>
            <div class="col-xs-10">
                <input type="text" class="form-control" id="inputName" placeholder="Name" required>
            </div>
        </div>
             <div class="form-group">
            <label for="inputContact" class="control-label col-xs-2">Mobile no</label>
            <div class="col-xs-10">
                <input type="text" class="form-control" id="inputContact" placeholder="Mobile no" required>
            </div>
        </div>
             <div class="form-group">
            <label for="inputEmail" class="control-label col-xs-2">Email</label>
            <div class="col-xs-10">
                <input type="email" class="form-control" id="inputEmail" placeholder="Email" required>
            </div>
        </div>
        <div class="form-group">
            <label for="inputPassword" class="control-label col-xs-2">Password</label>
            <div class="col-xs-10">
                <input type="password" class="form-control" id="inputPassword" placeholder="Atleast 6 Character" required>
            </div>
        </div>
        <div class="form-group">
            <div class="col-xs-offset-2 col-xs-10">
                <button type="submit" class="btn btn-primary">Create Account</button>
            </div>
        </div>
    </form>
<jsp:include page="Footer.jsp"></jsp:include>
