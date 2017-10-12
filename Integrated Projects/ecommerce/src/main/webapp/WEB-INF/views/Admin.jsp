<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cp" value="${pageContext.request.contextPath}" />
<jsp:include page="Header.jsp"></jsp:include>

<html>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Administration</title>
<c:url value="/" var="logoutUrl" />
	<form action="${logoutUrl}" method="post" id="logoutForm">
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
	</form>
	<script>
		function formSubmit() {
			document.getElementById("logoutForm").submit();
		}
	</script>

	<c:if test="${pageContext.request.userPrincipal.name != null}">
		<h2>
			Welcome : ${pageContext.request.userPrincipal.name} | <a
				href="javascript:formSubmit()"> Logout</a>
		</h2>
	</c:if>
</html>
<center><h2><b>Administration</b></h2></center>
<form:form modelAttribute="product" method="post"
	action="${cp}/Admin/insert" enctype="multipart/form-data">
	
	<table align="center">
		<thead bgcolor="blue">
			
		</thead>
		<tr>
			<td><form:hidden path="pid"></form:hidden></td>
		</tr>
		<tr>
			<td><form:hidden path="supplier_id"></form:hidden></td>
		</tr>
		<tr>
			<td><form:hidden path="category_id"></form:hidden></td>
		</tr>

		<tr>
			<td><form:label path="price">Price:</form:label> <form:input
					type="price" path="price" /></td>
		</tr>
		<tr>
			<td><form:label path="quantity">Quantity:</form:label> <form:input
					type="quantity" path="quantity" /></td>
		</tr>
		<tr>
			<td><form:label path="pname">Product Name:</form:label> <form:input
					type="pname" path="pname" /></td>
		</tr>
		<tr>
			<td><form:label path="desc">Description</form:label> <form:input
					path="desc" /></td>
		</tr>
		<tr>

		<td><button type="submit" class="btn btn-lg btn-info">Save</button></td>
		<td><button type="reset" class="btn btn-lg btn-info">Delete</button></td>
		
		</tr>
	</table>
</form:form>


