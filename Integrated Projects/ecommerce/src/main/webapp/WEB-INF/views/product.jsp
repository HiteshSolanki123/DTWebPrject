<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cp" value="${pageContext.request.contextPath}" />
<jsp:include page="Header.jsp"></jsp:include>

<html>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<html>
<head><title>Hi</title></head>

<body>

</body>

<table align="center">
<tr><td class=center style="width: 171px"><img
				src="${pageContext.request.contextPath}/resources/images/product/${prod.pid}.jpg"
				style="width: 550px; height: 350px;"></td>
<tr><td><p><b>Product Name : ${prod.pname}</b></p></td></tr>
<tr><td><p><b> Description : ${prod.desc }</b></p></td></tr>
<tr><td><p><b> Manufacturer: ${prod.manufacturer }</b></p></td></tr>
<tr><td><p><b> Price: ${prod.price }</b></p></td></tr>
				<tr><td><a class="btn btn-success btn-product" href="${cp}/cart/${prod.pid}"><span
						class="glyphicon glyphicon-shopping-cart"></span> Add to cart</a>
				</td></tr>
</table>

</html>