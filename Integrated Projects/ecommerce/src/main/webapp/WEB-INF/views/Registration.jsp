<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cp" value="${pageContext.request.contextPath}" />
<jsp:include page="Header.jsp"></jsp:include>

<html>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Registration Page</title>
<form:form modelAttribute="user" method="post"
	action="${cp}/Registration/insert">

	<h2>
	<center><b>REGISTRATION</b></center>
	</h2>
<br></br>
	<tr>
		<td><form:hidden path="uid"></form:hidden></td>
	</tr>
	<tr>
		<td><form:hidden path="enabled"></form:hidden></td>
	</tr>
	<tr>
		<td><form:hidden path="role"></form:hidden></td>
	</tr>
	<div class="form-group">
		<label for="firstname" class="control-label col-xs-2">First
			Name</label>
		<div class="col-xs-2">
			<input type="firstname" name="firstname" class="form-control"
				id="firstname" placeholder="firstname" required>
		</div>
		<br></br>
		<div class="form-group">
			<label for="lastname" class="control-label col-xs-2">Last
				Name</label>
			<div class="col-xs-2">
				<input type="lastname" name="lastname" class="form-control"
					id="lastname" placeholder="lastname" required>
			</div>
			<br></br>
			<div class="form-group">
				<label for="phone" class="control-label col-xs-2">Contact No</label>
				<div class="col-xs-2">
					<input type="phone" name="phone" class="form-control" id="phone"
						placeholder="phone" required>
				</div>
				<br></br>
				<div class="form-group">
					<label for="email" class="control-label col-xs-2">Email Id</label>
					<div class="col-xs-2">
						<input type="email" name="phone" class="form-control" id="email"
							placeholder="email" required>
					</div>
					<br></br>
					<div class="form-group">
						<label for="password" class="control-label col-xs-2">Password
						</label>
						<div class="col-xs-2">
							<input type="password" name="password" class="form-control"
								placeholder="password" required>
						</div>
						<br></br>

						<div class="form-group">
							<div class="col-xs-offset-2 col-xs-10">
								<button type="submit" class="btn btn-primary">Submit</button>
								<button type="reset" class="btn btn-lg btn-info">Cancel</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	
	

</form:form>