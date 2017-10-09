<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<c:set var="cp" value="${pageContext.request.contextPath}" />
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<spring:url value="/resources/css" var="css" />
<spring:url value="/resources/js" var="js" />
<spring:url value="/resources/images" var="img" />
<c:set var="cp" value="${pageContext.request.contextPath}" />
<ul class="nav navbar-nav navbar-right">
	<!-- code for security -->
	<sec:authorize access="hasRole('ROLE_ADMIN')" var="isAdmin">
		<li><a href="${cp }/admin/viewall">Admin</a></li>
		<li><a href="<c:url value="/logout" />">Logout</a></li>
	</sec:authorize>
	<sec:authorize access="hasRole('ROLE_USER')" var="isUser">
		<li><a href="<c:url value="/logout" />">Logout</a></li>
	</sec:authorize>

	<c:if test="${(isAdmin)  || (isUser)}">

	</c:if>
	<c:choose>
		<c:when test="${(isAdmin)  || (isUser)}">
		</c:when>
		<c:otherwise>
			<li><a href="${cp }/reg/reg"><span
					class="glyphicon glyphicon-user"></span> Sign Up</a></li>
			<li><a href="${cp }/login"><span
					class="glyphicon glyphicon-log-in"></span> Login</a></li>
		</c:otherwise>
	</c:choose>
</ul>



<html>


<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
	<!--Starting header-->
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="${cp}/Home">Bikers Boom</a>
			</div>
			<ul class="nav navbar-nav navbar-right">
				<li class="active"><a href="${cp}/Home"><span
						class="glyphicon glyphicon-home">Home</span></a></li>


				<li><a href="${cp}/Registration/"><span
						class="glyphicon glyphicon-user"></span> Sign Up</a></li>
				<li><a href="${cp}/Login"><span
						class="glyphicon glyphicon-log-in"></span> Login</a></li>
				<li><a href="${cp}/Category"><span
						class="glyphicon glyphicon-category"></span> Category</a></li>
				<li><a href="${cp}/Basket"><span
						class="glyphicon glyphicon-shopping-cart"></span> Basket</a></li>
				<li><a href="${cp}/AboutUs"><span
						class="glyphicon glyphicon-about-us">About Us</span></a></li>
				<li><a href="${cp}/ContactUs"><span
						class="glyphicon glyphicon-contact-us">Contact Us</span></a></li>
				<li><a href="${cp}/Admin/"><span
						class="glyphicon glyphicon-admin">Admin</span></a></li>

			</ul>
		</div>
	</nav>
	<!--Ending header-->