<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cp" value="${pageContext.request.contextPath}" />

<jsp:include page="Header.jsp"></jsp:include>

<html>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Order</title>


<form:form modelAttribute="bill" method="POST" action="${cp}/Bill/insert" >
<div class="center">
<div class="center">
<form:label path="fullname" class="control-label col-xs-1">Full Name</form:label><div class="col-xs-2"> 
<form:input path="fullname" class="form-control" placeholder="fullname"  /><form:errors path="fullname"/>
</div></div>
<br></br><br></br>
<div class="form-group">
<form:label path="address" class="control-label col-xs-1">Address</form:label><div class="col-xs-2"> 
<form:input path="address"  class="form-control" placeholder="address"  /><form:errors path="address"/>
</div></div>
<br></br>
<div class="form-group">
<form:label path="state" class="control-label col-xs-1">State</form:label><div class="col-xs-2"> 
<form:input path="state" class="form-control" name="state" placeholder="state" /><form:errors path="state"/>
</div></div>
<br></br>
<div class="form-group">
<form:label path="city" class="control-label col-xs-1">City</form:label><div class="col-xs-2"> 
<form:input path="city"  class="form-control" name="city" placeholder="city" /><form:errors path="city"/>
</div></div>
<br></br>
<div class="form-group">
<form:label path="zipcode" class="control-label col-xs-1">Zipcode</form:label><div class="col-xs-2"> 
<form:input path="zipcode" class="form-control" name="zipcode" placeholder="zipcode" required="required"/>
</div></div></div>
<br></br>
<form:hidden path="billsId"></form:hidden>
<form:button type="submit" class="btn btn-lg btn-info"> SAVE</form:button>
<form:button type="reset" class="btn btn-lg btn-info"> RESET</form:button>
</form:form>
</html>
