<jsp:include page="Header.jsp"></jsp:include>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet"
	href="<c:url value="resources/css/bootstrap-theme.min.css"/>">
	<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<c:set var="cp" value="${pageContext.request.contextPath}" />
<table class="table"  align="center">
<form>
	<tr>
	<tr bgcolor="grey">
		<th><center>Image</center></th>
		<th>Product Id</th>
		<th>Product Name</th>
		
		<th>Price</th>
		<th><center>Description</center></th>
		<th>Manufacturer</th>
	</tr>
	</tr>
	<form>
	<c:forEach items="${product}" var="prod">
		<tr>
			<td style="width: 171px"><img
				src="${pageContext.request.contextPath}/resources/images/product/${prod.pid}.jpg"
				style="width: 250px; height: 150px;">
			<td><center><b>${prod.pid}</b></center></td>
			<td><center><b>${prod.pname}</b></center></td>
			
			<td><b><center>${prod.price}</center></b></td>
			<td><b><center>${prod.desc}</center></b></td>
			<td><b><center>${prod.manufacturer}</center></b></td>
			<td>
					<a class="btn btn-success btn-product" href="cart/${prod.pid}"><span
						class="glyphicon glyphicon-shopping-cart"></span> Add to cart</a>
				</td>
				<td><security:authorize access="hasRole('ROLE_USER')">
					<a class="btn btn-success btn-product" href="${cp}/product/${prod.pid}"><span
						class="glyphicon glyphicon-shopping-cart"></span> View Details</a>
				</security:authorize></td>
				
			<td><security:authorize access="hasRole('ROLE_ADMIN')">
					<a class="btn btn-success btn-product" href="${cp}/deletePro/${prod.pid}"><span
						class="glyphicon glyphicon-shopping-cart"></span> Delete</a>
				</security:authorize></td>
			<td>
			<security:authorize access="hasRole('ROLE_ADMIN')">
				<a class="btn btn-success btn-product" href="${cp }/updatePro/${prod.pid}" ><span
					class="glyphicon glyphicon-shopping-cart"></span> Edit</a>
			</security:authorize>
			</td>
	</c:forEach>
	</form>
</table>