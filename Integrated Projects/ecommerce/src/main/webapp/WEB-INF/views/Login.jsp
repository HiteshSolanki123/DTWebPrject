<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cp" value="${pageContext.request.contextPath}" />

<jsp:include page="Header.jsp"></jsp:include>
        <h1>Sign-Up</h1>
        <script>
function validateForm()
{
	
var email=document.formLogin.email.value;
var password=document.formLogin.password.value;
if(email==null ||email=="")
	{
	alert("username cant be left blank");
	return false;
	}
else if(password.length<8)
	{
	alert("Password must be atleast 8 character long");
	return false;
	}
}
</script>
         <form class="form-horizontal" action="<c:url value='/j_spring_security_check' />" method="post">
        <div class="form-group">
            <label for="inputUsername" class="control-label col-xs-2">User Name</label>
            <div class="col-xs-2">
                <input type="text" class="form-control" id="inputUsername" placeholder="Username" required>
            </div>
        </div>
        <div class="form-group">
            <label for="inputPassword" class="control-label col-xs-2">Password</label>
            <div class="col-xs-2">
                <input type="password" class="form-control" id="inputPassword" placeholder="Password" required>
            </div>
        </div>
        <div class="form-group">
            <div class="col-xs-offset-2 col-xs-10">
                <div class="checkbox">
                    <label><input type="checkbox">Remember me</label>
                </div>
            </div>
        </div>
        <div class="form-group">
            <div class="col-xs-offset-2 col-xs-10">
                <button type="submit" class="btn btn-primary">Login</button>
                <input type="submit" name="submit" value="Login" />
            </div>
        </div>
        <input type="hidden" name="${_csrf.parameterName}" value="{_$csrf.token}"/>
        
         </form>

   <br></br><br></br><br></br><br></br><br></br><br></br><br></br>
<jsp:include page="Footer.jsp"></jsp:include>
