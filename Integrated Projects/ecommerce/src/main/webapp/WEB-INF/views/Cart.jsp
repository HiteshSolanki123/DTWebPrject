<jsp:include page="Header.jsp"></jsp:include>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet"
	href="<c:url value="resources/css/bootstrap-theme.min.css"/>">
<table cellspacing="3" align="center">
	<tr bgcolor="pink">
		<td>Product Name</td>
		<td>Quantity</td>
		<td>Sub Total</td>
		<td>Image</td>
		<td>Operation</td>
</tr>

<c:forEach items="${cartitems}" var="cartitem">
<tr>
<form action="<c:url value="/updateCartItem/${cartitem.cartid}"/>" method="get">
<td>$cartitem.prodname}</td>
<td><input type="text" valur="${ cartitem.quantity}" name="quantity" required/></td>
<td>${cartitem.price*cartitem.quantity }</td>
<td><img src="<c:url value='/resources/images/product/${ cartitem.prodid}.jpg'/>" width="100px"></td>
<td>
<a href=<c:url value="deleteCartItem/${cartitem.citemid}"/> method="get"DELETE></a>
</td>

</form>
</c:forEach>



</table>