<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cp" value="${pageContext.request.contextPath}" />

<jsp:include page="Header.jsp"></jsp:include>

<html>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Order</title>


<form:form modelAttribute="bill" method="POST" action="${cp}/Bill/insert" >


<form:label path="fullname" class="control-label col-xs-2">Full Name</form:label>
<form:input path="fullname" placeholder="fullname" type="text" required="required"/>
<br></br>

<form:label path="address" class="control-label col-xs-2">Address</form:label>
<form:input path="address"  placeholder="address" type="text" required="required"/>
<br></br>
<form:label path="state" class="control-label col-xs-2">State</form:label>
<form:input path="state" name="state" placeholder="state" type="text" required="required"/>
<br></br>
<form:label path="city" class="control-label col-xs-2">City</form:label>
<form:input path="city" name="city" placeholder="city" type="text" required="required"/>
<br></br>
<form:label path="zipcode" class="control-label col-xs-2">Zipcode</form:label>
<form:input path="zipcode" name="zipcode" placeholder="zipcode" type="number" maxlength="6" minlength="6" required="required"/>
<br></br>
<form:hidden path="billsId"></form:hidden>
<form:button type="submit" class="btn btn-lg btn-info">SAVE</form:button>
<form:button type="reset" class="btn btn-lg btn-info">RESET</form:button>
</form:form>
</html>
