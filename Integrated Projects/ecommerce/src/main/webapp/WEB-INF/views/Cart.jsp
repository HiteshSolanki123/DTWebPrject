<jsp:include page="Header.jsp"></jsp:include>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet"
	href="<c:url value="resources/css/bootstrap-theme.min.css"/>">
	<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<c:set var="cp" value="${pageContext.request.contextPath}" />
<%-- <form action="<c:url value="/updateCartItem/${cart.cartItemId}"/>" method="post"> --%>
	<table  border = "1" cellspacing="3" align="center">
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
		<td><input type="text" value="${ cart.quantity}" name="quantity" required/></td>
		<td>${cart.price*cart.quantity }</td>
		<td><img src="<c:url value='/resources/images/product/${cart.productId}.jpg'/>" width="100px"></td>
		<td>
		<a class="btn btn-success btn-product" href="cart/deleteCartItem/${cart.cartItemId}"><span class="glyphicon glyphicon-shopping-cart"></span> Delete</a>
          </td>
	</tr>
	</c:forEach>
	<tr>
		<td><a href="/checkout" input type="submit" value="Checkout"/></a></td>
		<td><a class="btn btn-success btn-product" href="cart/checkout"><span class="glyphicon glyphicon-shopping-cart"></span> Checkout</a>
        </td>
	</tr>
</table>