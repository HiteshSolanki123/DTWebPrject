<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
	
</head>
<body>

	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="<c:url value="/Home/" />">Bikers Shop</a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav">
				<li><a href=" <c:url value="/Home/" />">Home</a></li>
				<li><a href=" <c:url value="/getAllProducts" />">Product
						List</a></li>
				<li><a href=" <c:url value="/AboutUs/" />">About Us</a></li>

				<security:authorize access="hasRole('ROLE_USER')">
					<li><a href=" <c:url value="/ContactUs/" />">Contact Us</a></li>
				</security:authorize>

				<!-- 			Only admin can view this link -->
				<security:authorize access="hasRole('ROLE_ADMIN')">
					<li><a href=" <c:url value="/Admin/" />">Add Product</a></li>
				</security:authorize>
			</ul>

			<ul class="nav navbar-nav navbar-right">

				<c:if test="${!empty pageContext.request.userPrincipal.name}">
					<li><a href="<c:url value="/Home/" />"><span
							class="glyphicon glyphicon-shopping-user"></span>Welcome..${pageContext.request.userPrincipal.name}</a></li>

					<security:authorize access="hasRole('ROLE_USER')">
						<li><a href="<c:url value="/Basket/" />"><span
								class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
					</security:authorize>
					<c:url value="/j_spring_security_logout" var="logoutUrl" />
					<form action="${logoutUrl}" method="post" id="logoutForm">
						<input type="hidden" name="${_csrf.parameterName}"
							value="${_csrf.token}" />
					</form>
					<script>
						function formSubmit() {
							document.getElementById("logoutForm").submit();
						}
					</script>
					<li><a href="<c:url value="/login?logout" />"><span
							class="glyphicon glyphicon-log-out"></span> Logout</a></li>
				</c:if>
			</ul>
			<ul class="nav navbar-nav navbar-right">

				<c:if test="${pageContext.request.userPrincipal.name==null}">
					<li><a href="<c:url value="/login/" />"><span
							class="glyphicon glyphicon-shopping-cart"></span>My Cart</a></li>
							
					<li><a href="<c:url value="/Registration/" />"><span
							class="glyphicon glyphicon-log-user"></span> SignUp</a></li>
							
					<li><a href="<c:url value="/login/" />"><span
							class="glyphicon glyphicon-log-in"></span> Login</a></li>
				</c:if>
			</ul>
		</div>
	</div>
	</nav>



</body>
</html>