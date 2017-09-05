<jsp:include page="Header.jsp"></jsp:include>
        <h1>Sign-Up</h1>
         <form class="form-horizontal" action="/examples/actions/confirmation.php" method="post">
        <div class="form-group">
            <label for="inputUsername" class="control-label col-xs-2">Username</label>
            <div class="col-xs-10">
                <input type="text" class="form-control" id="inputUsername" placeholder="Username" required>
            </div>
        </div>
        <div class="form-group">
            <label for="inputPassword" class="control-label col-xs-2">Password</label>
            <div class="col-xs-10">
                <input type="password" class="form-control" id="inputPassword" placeholder="Password" required>
            </div>
        </div>
        <div class="form-group">
            <div class="col-xs-offset-2 col-xs-10">
                <div class="checkbox">
                    <label><input type="checkbox"> Remember me</label>
                </div>
            </div>
        </div>
        <div class="form-group">
            <div class="col-xs-offset-2 col-xs-10">
                <button type="submit" class="btn btn-primary">Login</button>
            </div>
        </div>
         </form>

   
<jsp:include page="Footer.jsp"></jsp:include>
