<%@taglib uri="http://java.sun.com/jstl/core" prefix="c" %>


<jsp:include page="header.jsp" > <jsp:param name="" value=""/> </jsp:include>
<center>
<div ng-app="myApp" ng-controller="namesCtrl" ng-init="test='${pro}'">
		<p>
			<lable>Search : <input type="text" ng-model="test"><lable><br/>
		 
		</p>
		<table border="1" width="50%" >
			<tr>
				<th ng-click="orderByMe('name')">Name</th>
				<th ng-click="orderByMe('country')">version</th>
				<th>View Edit Delete Add To Cart</th>
			</tr>
			<tr ng-repeat="x in names | orderBy:myOrderBy | filter:test">
				<td align="center">{{x.brand}}</td>
				<td align="center">{{x.name}}</td>
				<td>	<a href="<c:url value="viewdetail" />"><button class="button button1">View</button></a>
					<a href="<c:url value="viewedit" />" id="iphn"><button class="button button2">Edit</button></a>
					<a href="<c:url value="viewdel" />" id="iphn" ><button class="button button3">Delete</button></a>
					<a href="<c:url value="add" />" id="iphn" ><button class="button button5">Add To Cart</button></a>
				</td>
			</tr>
		</table>
	</div>
	</center>
	<script src="resources/js/ex.js"></script> 

<jsp:include page="footer.jsp" > <jsp:param name="" value=""/> </jsp:include>

