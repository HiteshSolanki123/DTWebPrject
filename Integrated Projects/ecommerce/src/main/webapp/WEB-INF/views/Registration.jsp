<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cp" value="${pageContext.request.contextPath}" />
<jsp:include page="Header.jsp"></jsp:include>

<html>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Page</title>
<style>
.err {
	color: red;
}

.err_bdr {
	border: 1px solid red;
}

.bdr {
	border: 1px solid gray;
}
</style>
</html>



<form:form modelAttribute="user" method="post"
	action="${cp}/Registration/insert">
	<table align="center">
		<thead bgcolor="blue">
			<th colspan="2"><b>REGISTRATION</b></th>
		</thead>
		<tr>
			<td><form:hidden path="uid"></form:hidden></td>
		</tr>
		<tr>
			<td><form:hidden path="enabled"></form:hidden></td>
		</tr>
		<tr>
			<td><form:hidden path="role"></form:hidden></td>
		</tr>
		<tr>
			<td><form:label path="firstname">First Name:</form:label>
			<form:input type="firstname" path="firstname" /></td>
		</tr>
		<tr>
			<td><form:label path="lastname">Last Name:</form:label>
			<form:input type="lastname" path="lastname" /></td>
		</tr>
		<tr>
			<td><form:label path="phone">Phone No:</form:label>
			<form:input type="phone" path="phone" /></td>
		</tr>
		<tr>
			<td><form:label path="email">Email:</form:label>
			<form:input path="email" /></td>
		</tr>
		<tr>
			<td><form:label path="password">Password:</form:label>
			<form:input type="password" path="password" /></td>
		</tr>


		<tr>
		<td><button type="submit" class="btn btn-lg btn-info">Submit</button></td>
		<td><button type="reset" class="btn btn-lg btn-info">Cancel</button></td>
		</tr>
</form:form>

<br></br>
<br></br>
<br></br>
<br></br>
<br></br>
<br></br>
<jsp:include page="Footer.jsp"></jsp:include>