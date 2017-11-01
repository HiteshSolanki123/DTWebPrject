<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cp" value="${pageContext.request.contextPath}" />

<jsp:include page="Header.jsp"></jsp:include>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Payment</title>
<form:form modelAttribute="payment" method="POST" action="${cp}/Payment/insert" >


<form:label path="name" class="control-label col-xs-2">Name On Card</form:label>
<form:input path="name" placeholder="Name On Card" type="text" required="required"/>
<br></br>

<form:label path="cNo" class="control-label col-xs-2">Card Number</form:label>
<form:input path="cNo" placeholder="Name On Card" type="number" required="required"/>
<br></br>

<form:label path="exDate" class="control-label col-xs-2">Expration Date</form:label>
<form:input path="exDate" placeholder="Expiry Date" type="text" required="required"/>
<br></br>
<form:hidden path="payId"></form:hidden>

<form:label path="cvv" class="control-label col-xs-2">CVV(?)</form:label>
<form:input path="cvv" placeholder="CVV Number" type="number" required="required"/>
<br></br>

<form:button type="submit" class="btn btn-lg btn-info">Submit</form:button>
<form:button type="reset" class="btn btn-lg btn-info">RESET</form:button>
</form:form>
