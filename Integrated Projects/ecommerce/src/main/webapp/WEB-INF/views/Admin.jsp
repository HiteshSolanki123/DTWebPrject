<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cp" value="${pageContext.request.contextPath}" />
<jsp:include page="Header.jsp"></jsp:include>

<html>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Administration</title>

</html>

<h1>Administration</h1>

<form:form modelAttribute="product" method="post" action="${cp}/Admin/insert">
	<div class=col-lg-3>
		<div>
			<form:hidden path="pid"></form:hidden>
		</div>
		<div>
			<form:hidden path="supplier_id"></form:hidden>
		</div>
		<div>
			<form:hidden path="category_id"></form:hidden>
		</div>
		
		<div>
			<form:label path="price">Price:</form:label>
			<form:input type="price" path="price" />
		</div>
		<div>
			<form:label path="quantity">Quantity:</form:label>
			<form:input type="quantity" path="quantity" />
		</div>
		<div>
			<form:label path="pname">Product Name:</form:label>
			<form:input type="pname" path="pname" />
			<div>
				<form:label path="desc">Description</form:label>
				<form:input path="desc" />
			</div>
		</div>
		<button type="update" class="btn btn-lg btn-info">Update</button>
		<button type="delete" class="btn btn-lg btn-info">Delete</button>
	</div>

</form:form>