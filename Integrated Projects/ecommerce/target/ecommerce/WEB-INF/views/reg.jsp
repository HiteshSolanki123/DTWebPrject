

<jsp:include page="header.jsp">
	<jsp:param name="" value="" />
</jsp:include>

<label>Registration</label>
<div class="form-group">
	<label for="n">Name :</label> <input type="text" class="form-control"
		id="n" style="hight: 100px; width: 25%;">
</div>
<div class="form-group">
	<label for="em">Email :</label> <input type="email"
		class="form-control" id="em" style="hight: 100px; width: 25%;">
</div>
<div class="form-group">
	<label for="pwd">Password :</label> <input type="password"
		class="form-control" id="pwd" style="hight: 100px; width: 25%;">
</div>
<div class="form-group">
	<label for="gen">Gender :</label> <label class="radio-inline">
	<input type="radio" name="male" id="gen">Male</label>
		 <label class="radio-inline">
		 <input type="radio" name="female" id="gen">Female</label>
</div>
<div class="form-group">
	<label for="add">Address :</label>
	<textarea class="form-control" rows="5" id="comment"
		style="hight: 100px; width: 25%;"></textarea>
</div>
<button type="button" class="btn btn-primary btn-md">Login</button>

<jsp:include page="footer.jsp">
	<jsp:param name="" value="" />
</jsp:include>

