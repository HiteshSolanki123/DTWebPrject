<jsp:include page="Header.jsp"></jsp:include>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <c:set var="cp" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
    /* Remove the navbar's default rounded borders and increase the bottom margin */ 
    .navbar {
      margin-bottom: 50px;
      border-radius: 0;
    }
    
    /* Remove the jumbotron's default bottom margin */ 
     .jumbotron {
      margin-bottom: 0;
    }
   
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #f2f2f2;
      padding: 25px;
    }
  </style>
</head>
<body>



<div class="container">    
  <div class="row">
    <div class="col-sm-3"style="height:200px; width:275px">
      <div class="panel panel-primary">
        <div class="panel-heading">Monsoon DEAL 50% Off</div>
        <div class="panel-body"><a href="/Exhaust"><img src="${cp}/resources/images/exhaust.jpg" class="img-responsive" style="height:150px; width:250px" alt="Image"></div>
        <div class="panel-footer"><b><center>Exhausts</center></b></a></div>
      </div>
    </div>
    <div class="col-sm-3" style="height:200px; width:275px"> 
      <div class="panel panel-danger">
        <div class="panel-heading">Monsoon DEAL 50% Off</div>
        <div class="panel-body"><a href="/Helmets"><center><img src="${cp}/resources/images/helmet.jpg" } class="img-responsive" style="height:150px; width:250px" alt="Image"></div></center> 
        <div class="panel-footer"><b><center>Helmets</center></b></a></div>
      </div>
    </div>
    <div class="col-sm-3" style="height:200px; width:275px"> 
      <div class="panel panel-success">
        <div class="panel-heading">Monsoon DEAL 50% Off</div>
        <div class="panel-body"><a href="/Gloves"><img src="${cp}/resources/images/gloves.jpg" class="img-responsive" style="height:150px; width:250px" alt="Image"></div>
        <div class="panel-footer"><b><center>Gloves</center></b></a></div>
      </div>
    </div>
    <div class="col-sm-4" style="height:200px; width:275px"> 
      <div class="panel panel-primary">
        <div class="panel-heading">Monsoon DEAL</div>
        <div class="panel-body"><a href="/SafetyGuards"><img src=${cp}/resources/images/safety.jpg class="img-responsive" style="height:150px; width:250px" alt="Image"></div>
        <div class="panel-footer"><b><center>Safety Guards</center></b></a></div>
      </div>
  </div>
  
  </div>
 
<br/><br/><br/><br/><br/><br/>

    
  <div class="row">
    <div class="col-sm-3" style="height:200px; width:275px">
      <div class="panel panel-primary">
        <div class="panel-heading">Monsoon DEAL</div>
        <div class="panel-body"><a href="/Accessories"><img src=${cp}/resources/images/accessories.png class="img-responsive" style="height:150px; width:250px" alt="Image"></div>
        <div class="panel-footer"><b><center>Accessories</center></b></a></div>
      </div>
    </div>

    <div class="col-sm-3" style="height:200px; width:275px"> 
      <div class="panel panel-primary">
        <div class="panel-heading">Monsoon DEAL</div>
        <div class="panel-body"><a href="/Shoes"><img src=${cp}/resources/images/shoes.jpg class="img-responsive" style="height:150px; width:250px" alt="Image"></div>
        <div class="panel-footer"><b><center>Shoes</center></b></a></div>
      </div>
    </div>
    <div class="col-sm-3" style="height:200px; width:275px"> 
      <div class="panel panel-primary">
        <div class="panel-heading">Monsoon DEAL</div>
        <div class="panel-body"><a href="/lights"><img src=${cp}/resources/images/lights.jpg class="img-responsive" style="height:150px; width:250px" alt="Image"></div>
        <div class="panel-footer"><b><center>Lights</center></b></a></div>
      </div>
    </div>
    <div class="col-sm-3" style="height:200px; width:275px"> 
      <div class="panel panel-primary">
        <div class="panel-heading">Monsoon DEAL</div>
        <div class="panel-body"><a href="/Jackets"><img src=${cp}/resources/images/jacket.jpg class="img-responsive" style="height:150px; width:250px" alt="Image"></div>
        <div class="panel-footer"><b><center>Jackets</center></b></a></div>
      </div>
      
  </div>
</div><br><br>



</body>
</html>

<jsp:include page="Footer.jsp"></jsp:include>