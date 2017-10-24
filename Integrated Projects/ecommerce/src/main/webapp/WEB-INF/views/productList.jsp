<jsp:include page="Header.jsp"></jsp:include>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet"
	href="<c:url value="resources/css/bootstrap-theme.min.css"/>">
	<c:set var="cp" value="${pageContext.request.contextPath}" />
<table border="1">
	<tr>
	<th>Image</th>
	<th>Product Id</th>
		<th>Product Name</th>
		<th>Quantity</th>
		<th>Price</th>
		<th>Description</th>
		<th>Manufacturer</th>
	</tr>
	<c:forEach items="${product}" var="prod">
		<tr>
			<td style="width: 171px"><img
				src="${pageContext.request.contextPath}/resources/images/product/${prod.pid}.jpg" style="width:100px; height:90px;">
			<td>${prod.pid}</td>
			<td>${prod.pname}</td>
			<td>${prod.quantity}</td>
			<td>${prod.price}</td>
			<td>${prod.desc}</td>
			<td>${prod.manufacturer}</td>
			<td>
               <%-- <a class="btn btn-success btn-product" href="${cp}/addCart/${prod.pid}"><span class="glyphicon glyphicon-shopping-cart"></span> Add to cart</a> --%> 
               <a class="btn btn-success btn-product" href="cart/addtocart/${prod.pid}"><span class="glyphicon glyphicon-shopping-cart"></span> Add to cart</a>
           </td>
							
	</c:forEach>
	</form>
</table>