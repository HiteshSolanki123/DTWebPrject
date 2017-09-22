<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cp" value="${pageContext.request.contextPath}" />
<jsp:include page="Header.jsp"></jsp:include>



	<h1>Registration</h1>
	
	<form:form  modelAttribute="user" method="post" action="${cp}/Registration/insert"  >
	<div class=col-lg-3>
		<div><form:hidden path="uid"></form:hidden></div>
		<div><form:hidden path="enabled"></form:hidden></div>
		<div><form:hidden path="role"></form:hidden></div>
		<div>
			<form:label path="name">Name:</form:label> 	
			<form:input path="name" />
		</div>
		
		<div>
			<form:label path="email">Email:</form:label> 	
			<form:input path="email" />
		</div>
		<div>
			<form:label path="password">Password:</form:label> 	
			<form:input type="password" path ="password" />
		</div>
		<button type="submit" class="btn btn-lg btn-info">Submit</button>
		<button type="reset" class="btn btn-lg btn-info">Cancel</button>
</div>

	</form:form>

<br></br>
<br></br>
<br></br>
<br></br>
<br></br>
<br></br>
<jsp:include page="Footer.jsp"></jsp:include>