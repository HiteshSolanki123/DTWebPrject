<jsp:include page="Header.jsp"></jsp:include>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<c:set var="cp" value="${pageContext.request.contextPath}" />
<html>
<title>Bikers Shop</title>


<div id="myContainer"
	style="height: 500px; width: 100%; overflow: hidden; cursor: pointer">
	<div id="myCarousel" class="carousel slide" data-ride="carousel"
		data-interval="2000">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>

			<li data-target="#myCarousel" data-slide-to="2"></li>
			<li data-target="#myCarousel" data-slide-to="3"></li>
		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img src="${cp}/resources/images/kh2.jpg" alt="Chania"
					style="height: 500px; width: 100%; overflow: hidden; cursor: pointer">
			</div>

			<div class="item">
				<img src="${cp}/resources/images/hb.jpg" alt="Chania"
					style="height: 500px; width: 100%; overflow: hidden; cursor: pointer">
			</div>

			<div class="item">
				<img src="${cp}/resources/images/mv.jpg" alt="Flower"
					style="height: 500px; width: 100%; overflow: hidden; cursor: pointer">
			</div>

		</div>

		<!-- Left and right controls -->
		<a class="left carousel-control" href="#myCarousel" role="button"
			data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"
			aria-hidden="true"></span> <span class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel" role="button"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>

	<!-- Cards -->
</div>
<div class="row" style="height: 400px; width: 100%;">

	<ul class="nav-justified">
		<li><div class="card ">
				<a href="${cp }/viewlist/iphone"></a><img class="card-img-top"
					src="${cp}/resources/images/stand.JPG" alt="Card image cap"
					style="height: 300px; padding: 8%; width: 100%; overflow: hidden; cursor: pointer"></a>

			</div></li>
		<li><div class="card">
				<a href="${cp }/viewlist/ipad"></a><img class="card-img-top"
					src="${cp}/resources/images/ex.jpg" alt="Card image cap"
					style="height: 300px; padding: 8%; width: 100%; overflow: hidden; cursor: pointer"></a>

			</div></li>
		<li><div class="card">
				<a href="${cp }/viewlist/mac"></a><img class="card-img-top"
					src="${cp}/resources/images/vroad.jpg" alt="Card image cap"
					style="height: 300px; padding: 8%; width: 100%; overflow: hidden; cursor: pointer"></a>

			</div></li>
	</ul>
</div>


</body>
</html>
<jsp:include page="Footer.jsp"></jsp:include>