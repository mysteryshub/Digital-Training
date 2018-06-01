<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>a{text-decoration: none;
color:white;
}

a:HOVER{
color:orange;}

#blinktext
{
animation-duration: 600ms;
  animation-name: blink;
  animation-iteration-count: infinite;
  animation-direction:alternate;

}
@keyframes blink {
  from {
    opacity: 1;
  }

  to {
    opacity: 0;
  }
  }

</style>

</head>
<body>
<div id="logo" style="background-image:url('/ecommerce/images/logo.jpg');width:100%;height:200px;position:absolute;" >

</div>
<div>
<div style="position:relative;float:left;margin-right:65px;margin-left:600px;margin-top:140px;font-size: 30px;color:white"><a href="/ecommerce/html/tour.html">Tour</a></div>
<div style="position:relative;float:left;margin-right:65px;font-size: 30px;margin-top:140px;color:white"><a href="/ecommerce/html/features.html">Features</a></div>
<div style="position:relative;float:left;margin-right:65px;font-size: 30px;color:white;margin-top:140px"><a href="/ecommerce/html/contactus.html">Contact us</a></div>
<div style="position:relative;float:left;margin-right:65px;font-size: 30px;color:white;margin-top:140px"><a href="/ecommerce/jsp/courses.jsp">Courses</a></div>
<div style="position:relative;float:left;font-size: 30px;color:white;margin-top:140px"><a href="/ecommerce/jsp/signin.jsp">Sign in</a></div>
</div>
<a href="/ecommerce/jsp/home.jsp" style="margin-left:-100px; ;color:black;text-decoration: underline;font-size: 20px;position: absolute;margin-top: 220px"><b>Home</b></a>


<div style="border-color: black;border-style:solid;  position:absolute;margin-top: 270px;width:70%;height:750px;margin-left:200px"><h1><center><font size="20px" >Sign into your DreamHqTraining</font></center></h1>
<% String msgd=(String)request.getAttribute("msg");%>
<% if(msgd!=null)
{%>
<p style="margin-top: 85px;color:red;font-size: 20px;margin-left:350px;position: absolute;"><b><%=msgd %></b></p>
<% } %>
 <br><center><h3>Don't have a account <a id="blinktext" style="color:red; font-size: 25px"href="/ecommerce/jsp/registration.jsp"><b>Register here</b></a></h3></center>
<img style="margin-left: 280px"src="/ecommerce/images/LoginRed.jpg">
<form method="post" action="/ecommerce/Login">
<table boder="2" style="width:450px;height:200px;margin-left:240px;margin-top: 0px">

<tr style="font-size: 25px;margin-top: px"><th>User id<sup style="color:red">*</sup></th><td><input style="width:300px" type="text" name="userid" id="userid"></input></td></tr>
<tr style="font-size:25px"><th>Password<sup style="color:red">*</sup></th><td><input style="width:300px" type="password" name="password" id="password"></input></td></tr>
<tr ><th colspan="2"><input style="width:400px;height:50px;background-color: orange;font-style: oblique;font-size: 20px;font-family: serif;"type="submit" value="Sign in"></th></tr>
</table>
</form>
</div>
<div style="height:200px;background-color: #38364F;padding:25px;width:100%;margin-top:1200px;position:absolute"><p style="font-size: 20px"><a href=""><br>About DigitalHQTraining: The quick and affordable online training management solution for organizations to train, test and track their employees, students, customers or vendors. Courseplay is the property of Firstventure Corporation Private Limited, an up-and-coming privately-funded education-technology company founded in March 2012, headquartered in Mumbai, India.</a>
<br><br><br><br><b>DigitalHQTraining Online Training Platform © 2016. All Rights Reserved.</b></p></div>

</body>
</html>