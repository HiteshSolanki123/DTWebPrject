<%@taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<spring:url value="/resources/css" var="css"/>
<spring:url value="/resources/js" var="js"/>
<spring:url value="/resources/images" var="img"/>


<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.js"></script>
<html>
<head>
<title>hello</title>
	<script src="${js}/jquery.js"></script>
	<script src="${js}/bootstrap.js"></script>
	<link rel="stylesheet" href="${css}/bootstrap.min.css" />
</head>
<body>
	<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="<c:url value="home" />">iStore</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active">
      <a href="<c:url value="home" />">Home</a></li>
      <li><a href="<c:url value="contact" />">Contact Us</a></li>
      <li><a href="<c:url value="about" />">About Us</a></li>
      <li><a href="<c:url value="login" />">Login</a></li>
      <li><a href="<c:url value="reg" />">Registration</a></li>
      <li><a href="<c:url value="view" />">View all</a></li>
      <li><a href="<c:url value="reg" />">Cart</a></li>
    </ul>
  </div>
</nav>
<body>