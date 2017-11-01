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
<form:form class="form-horizontal" modelAttribute="user" method="post" action="${cp}/Registration/insert">

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
	<form:label path="firstname" class="control-label col-xs-2">First Name</form:label>
	<div class="col-xs-2"> 
	<form:input	path="firstname" name="firstname" class="form-control" id="firstname" 
			placeholder="firstname" maxlength="12" required="required" />
			</div>
			</div>

	<div class="form-group">
	<form:label path="lastname" class="control-label col-xs-2">Last Name</form:label> <div class="col-xs-2"> 
	<form:input	path="lastname" name="lastname" class="form-control" id="lastname" placeholder="lastname" maxlength="12" 
			required="required" /></div>
			</div>

<div class="form-group">
	<form:label path="phone" class="control-label col-xs-2">Contact No</form:label>
	<div class="col-xs-2"> 
	 <form:input path="phone" name="phone" class="form-control" id="phone" placeholder="phone" type="number" minlength="10" maxlength="10" title="enter the 10 digitmobile no" 
			required="required" /></div></div>

	<div class="form-group">
	<form:label path="email" class="control-label col-xs-2">Email Id</form:label> 
	<div class="col-xs-2"> 
	<form:input	path="email" name="email" class="form-control" id="email" type="email" placeholder="email"
			required="required" />
			</div></div>

	<div class="form-group">
	<form:label path="password" class="control-label col-xs-2">Password</form:label> 
	<div class="col-xs-2"> 
	<form:input	path="password" name="password" class="form-control" type="password" placeholder="password" id="password"
			required="required" /></div></div>
	<div class="form-group">
		<div class="col-xs-offset-2 col-xs-10">
	<form:button type="submit" class="btn btn-lg btn-info">Submit</form:button>
	<form:button type="reset" class="btn btn-lg btn-info">Cancel</form:button>
	</div>
	</div>

</form:form>
</html>