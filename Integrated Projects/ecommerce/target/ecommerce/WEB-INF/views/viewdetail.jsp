<%@taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<spring:url value="/resources/images" var="img"/>

<jsp:include page="header.jsp" > <jsp:param name="" value=""/> </jsp:include>
<div class="container ">
				<img src="${img}/6.jpg" alt="Card image cap" style="height: 500px;padding:8%; width: 40%; overflow: hidden; cursor: pointer">
				Mac	
		</div>	
<jsp:include page="footer.jsp" > <jsp:param name="" value=""/> </jsp:include>

