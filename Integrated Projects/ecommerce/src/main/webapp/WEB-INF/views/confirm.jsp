<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet"
	href="<c:url value="resources/css/bootstrap-theme.min.css"/>">
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<c:set var="cp" value="${pageContext.request.contextPath}" />
<jsp:include page="Header.jsp"></jsp:include>
<body>
<title>Bikers Shop</title>
<table align="center" >
<tr bgcolor="pink"/>
<c:forEach items="${bill}" var="bill">
<tr><td><p><b><font size="7">Email-Id : <u>${bill.email}</u></font></b></p></td></tr>
<tr><td><p><b><font size="7" > Full Name : <u>${bill.fullname}</u></font></b></p></td></tr>
<tr><td><p><b> <font size="7" >Address: <u>${bill.address}</u></font></b></p></td></tr>
<tr><td><p><b><font size="7" > City: <u>${bill.city }</u></font></b></p></td></tr>
<tr><td><p><b><font size="7" > State: <u>${bill.state}</u></font></b></p></td></tr>
<tr><td><p><b><font size="7" > Zipcode: <u>${bill.zipcode}</u></font></b></p></td></tr>
<br></br>
</c:forEach>

</table><br></br><center>
<a class="btn btn-success btn-product" href="${cp }/thankyou"><span
						class="glyphicon glyphicon-shopping-cart"></span>CONFIRM</a></center>
</body>
</html>