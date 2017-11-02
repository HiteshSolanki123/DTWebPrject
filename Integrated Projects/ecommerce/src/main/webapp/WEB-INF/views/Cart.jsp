<jsp:include page="Header.jsp"></jsp:include>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet"
	href="<c:url value="resources/css/bootstrap-theme.min.css"/>">
	<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
	<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<c:set var="cp" value="${pageContext.request.contextPath}" />
<%-- <form action="<c:url value="/updateCartItem/${cart.cartItemId}"/>" method="post"> --%>
	<table  class="table"  align="center">
	<tr bgcolor="pink">
		<td>Product Name</td>
		<td>Quantity</td>
		<td>Sub Total</td>
		<td>Image</td>
		<td>Operation</td>	
	</tr>

	<c:forEach items="${cart}" var="cart">
	<tr>
		<td>${cart.pname}</td>
		<td><input type="text" value="${cart.quantity}" name="quantity" required/></td>
		<td>${cart.price*cart.quantity }</td>
		<td class=center style="width: 171px"><img
				src="${pageContext.request.contextPath}/resources/images/product/${cart.productId}.jpg"
				style="width: 100px; height: 100px;"></td>
		<td>
		
		<a class="btn btn-success btn-product" href="${cp}/delete/${cart.cartItemId}"><span class="glyphicon glyphicon-shopping-cart"></span> Delete</a>
          </td>
	</tr>
	</c:forEach>
	<tr>
		<td><a href="/checkout" input type="submit" value="Checkout"/></a></td>
		<td><a class="btn btn-success btn-product" href="${cp}/Bill/"><span class="glyphicon glyphicon-shopping-cart"></span> Checkout</a>
        </td>
	</tr>
</table>