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
</head>
<body>
</html>
<center>
	<h2>
		<b>Administration</b>
	</h2>
</center>

<form:form class="form-horizontal" method="post" action="${cp}/Admin/insert"
	modelAttribute="product" enctype="multipart/form-data">
	
		
			<form:hidden path="pid"></form:hidden>
			<form:hidden path="supplier_id"></form:hidden>
			<form:hidden path="category_id"></form:hidden>

			<div class="form-group">
				<form:label path="price" class="control-label col-xs-2">Price</form:label>
				<div class="col-xs-2">
					<form:input path="price" class="form-control" name="price" placeholder="price"
						type="number" required="required" />
			</div></div>

			<div class="form-group">
				<form:label path="quantity" class="control-label col-xs-2">Quantity</form:label>
					<div class="col-xs-2">
					<form:input path="quantity" class="form-control" placeholder="quantity" type="number"
						required="required" /></div></div>
			
			<div class="form-group">
			<form:label path="pname" class="control-label col-xs-2">Product	Name</form:label>
					
					<div class="col-xs-2">
					<form:input path="pname" class="form-control" placeholder="product name"
						required="required" /></div></div>
		
			<div class="form-group">
				<form:label path="desc" class="control-label col-xs-2">Description</form:label>
					<div class="col-xs-2">
					<form:input path="desc" class="form-control" placeholder="Description"
						required="required" /></div></div>
		<div class="form-group">
				<form:label path="manufacturer"
						class="control-label col-xs-2">Manufacturer</form:label> <div class="col-xs-2"><form:input
						path="manufacturer" class="form-control" placeholder="manufacturer" required="required" />
			
			</div></div>
			<div class="form-group">
				<form:label path="file" class="control-label col-xs-2">Select Image</form:label><div class="col-xs-3"> 
				<form:input	type="file" path="file" class="form-control" required="required" />
				</div></div>
				<div class="form-group">
		<div class="col-xs-offset-2 col-xs-10">
			<form:button type="submit" class="btn btn-lg btn-info">SAVE</form:button>
					<form:button type="reset" class="btn btn-lg btn-info">RESET</form:button>
				</div></div>
		
		
		
</form:form>