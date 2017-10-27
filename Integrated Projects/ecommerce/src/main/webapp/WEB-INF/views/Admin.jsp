<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cp" value="${pageContext.request.contextPath}" />
<jsp:include page="Header.jsp"></jsp:include>

<html>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Administration</title>
</html>
<center>
	<h2>
		<b>Administration</b>
	</h2>
</center>

<form:form method="post" action="${cp}/Admin/insert" modelAttribute="product" enctype="multipart/form-data">
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
			<form:label path="price" class="control-label col-xs-2">Price</form:label>
			<div class="col-xs-2">
				<form:input path="price" name="price" placeholder="price" required="required"/>
			</div>
			<br></br>
			<div class="form-group">
				<form:label path="quantity" class="control-label col-xs-2">Quantity</form:label>
				<div class="col-xs-2">
					<form:input path="quantity" placeholder="quantity" required="required" />
				</div>
				<br></br>
				<div class="form-group">
					<form:label path="pname" class="control-label col-xs-2">Product	Name</form:label>
					<div class="col-xs-2">
						<form:input path="pname" placeholder="product name" required="required"/>
					</div>
					<br></br>
					<div class="form-group">
						<form:label path="desc" class="control-label col-xs-2">Description</form:label>
						<div class="col-xs-2">
							<form:input path="desc" placeholder="Description" required="required"/>
						</div>
						<br></br>
						<div class="form-group">
							<form:label path="manufacturer" class="control-label col-xs-2">Manufacturer</form:label>
							<div class="col-xs-2">
								<form:input path="manufacturer"  placeholder="manufacturer" required="required"/>
							</div>
							<br></br>
							<div class="form-group">
								<form:label path="file">Select Image</form:label>
								<form:input type="file" path="file" class="form-control" required="required"/>
								<br></br>

								<form:button type="submit" class="btn btn-lg btn-info">SAVE</form:button>
								<form:button type="reset" class="btn btn-lg btn-info">RESET</form:button>

							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
	</table>
</form:form>