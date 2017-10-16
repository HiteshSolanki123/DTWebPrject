<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cp" value="${pageContext.request.contextPath}" />
<jsp:include page="Header.jsp"></jsp:include>

<html>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Administration</title>
<c:url value="/" var="logoutUrl" />
<form action="${logoutUrl}" method="post" id="logoutForm">
	<input type="hidden" name="${_csrf.parameterName}"
		value="${_csrf.token}" />
</form>
<script>
	function formSubmit() {
		document.getElementById("logoutForm").submit();
	}
</script>


</h2>
<
</html>
<center>
	<h2>
		<b>Administration</b>
	</h2>
</center>
<form:form modelAttribute="product" method="post"
	action="${cp}/Admin/insert" enctype="multipart/form-data">

	<table align="center">
		<thead bgcolor="blue">

		</thead>
		<tr>
		
			<td><form:hidden path="pid"></form:hidden></td>
		</tr>
		<tr>
			<td><form:hidden path="supplier_id"></form:hidden></td>
		</tr>
		<tr>
			<td><form:hidden path="category_id"></form:hidden></td>
		</tr>

		<div class="form-group">
			<label for="price" class="control-label col-xs-2">Price</label>
			<div class="col-xs-2">
				<input type="price" name="price" class="form-control" id="price"
					placeholder="price" required>
			</div>
			<br></br>
			<div class="form-group">
				<label for="quantity" class="control-label col-xs-2">Quantity</label>
				<div class="col-xs-2">
					<input type="quantity" name="quantity" class="form-control"
						id="quantity" placeholder="quantity" required>
				</div>
				<br></br>
				<div class="form-group">
					<label for="pname" class="control-label col-xs-2">Product
						Name</label>
					<div class="col-xs-2">
						<input type="pname" name="pname" class="form-control" id="pname"
							placeholder="product name" required>
					</div>
					<br></br>
					<div class="form-group">
						<label for="desc" class="control-label col-xs-2">Description</label>
						<div class="col-xs-2">
							<input type="desc" name="desc" class="form-control" id="desc"
								placeholder="Description" required>
						</div>
						<br></br>
						<div class="form-group">
						<label for="manufacturer" class="control-label col-xs-2">Manufacturer</label>
						<div class="col-xs-2">
							<input type="manufacturer" name="manufacturer" class="form-control" id="manufacturer"
								placeholder="manufacturer" required>
						</div>
						<br></br>
						<div class="form-group">
							<form:label path="file">Select Image</form:label>
							<form:input type="file" path="file" class="form-control" />
							<br></br>
							<td><button type="submit" class="btn btn-lg btn-info">Save</button></td>
							<td><a href="/saveOrUpdate"></a>
							<button class="btn btn-lg btn-info">Update</button></td>
							<td><a href="/delete"></a>
							<button class="btn btn-lg btn-info">Delete</button></td>
							<td><button type="reset" class="btn btn-lg btn-info">Reset</button></td>

						</div>
					</div>
				</div>
			</div>
		</div>
	</table>
</form:form>


