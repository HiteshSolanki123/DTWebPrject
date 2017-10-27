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
		<center>
			<b>REGISTRATION</b>
		</center>
	</h2>

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
	<form:label path="firstname">First Name</form:label> <form:input
			path="firstname" name="firstname" id="firstname"
			placeholder="firstname" maxlength="12" required="required" />
			</div>
<br></br>

	<div class="form-group">
	<form:label path="lastname">Last Name</form:label> <form:input
			path="lastname" name="lastname" id="lastname" placeholder="lastname" maxlength="12" 
			required="required" /></div>
<br></br>
<div class="form-group">
	<form:label path="phone">Contact No</form:label> <form:input
			path="phone" name="phone" id="phone" placeholder="phone" maxlength="10" 
			required="required" /></div>
<br></br>

	<div class="form-group">
	<form:label path="email">Email Id</form:label> <form:input
			path="email" name="email" id="email" placeholder="email"
			required="required" />
			</div>
<br></br>
	<div class="form-group">
	<form:label path="password">Password</form:label> <form:input
			path="password" name="password" placeholder="password" id="password"
			required="required" /></div>
	<div class="form-group">
	<form:button type="submit" class="btn btn-primary">Submit</form:button>
	<form:button type="reset" class="btn btn-lg btn-info">Cancel</form:button>
	</div>

</form:form>
</html>