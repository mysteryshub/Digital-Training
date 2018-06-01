
<%@page import="ecommerce.db.Crudoperation"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>






<style>
sup{color:red;

}
h3{
color:blue;		}

</style>

</head>
<body >


<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
sup{color:red;

}
h3{
color:blue;		}
tr th td{
padding:10px;
width:300px;
}

</style>

</head>
<body >
<img style="position: absolute;"src= "/ecommerce/images/coordinatorcover.jpg">
<p style="position: absolute;margin-top: 20px;margin-left:500px;font-size: 40px;color:orange"><b>Digital HQ training</b> 	
</p>
<img style="position:absolute;margin-left: 200px;margin-top: 200px " src="/ecommerce/images/photo.jpg">
<a href="/ecommerce/jsp/compose.jsp" style='position: absolute;margin-top: 230px;margin-left: 550px;font-size: 30px;color:black'>Compose</a>
	<a href="/ecommerce/jsp/inbox.jsp" style='position: absolute;margin-top: 230px;margin-left: 750px;font-size: 30px;color:black'>Inbox</a>
	<a href="/ecommerce/jsp/sentitem.jsp" style='position: absolute;margin-top: 230px;margin-left: 900px;font-size: 30px;color:black'>Sent items</a>
	<%  HttpSession hs=request.getSession(false);
String uid=(String)hs.getAttribute("userinfo");%>
	<p style="position: absolute;margin-top: 300px;margin-left: 450px;font-size: 50px;color:orange;">Hello <%=uid %></p>
<div style="position:absolute;width:500px;height:300px;background-color: #FFC488  ;border-style:solid;    ;margin-left: 300px;margin-top: 450px;padding:10px;">
 
 <form method="post"  action="/ecommerce/Editprofile">
 <center><table bord='' style="margin-top:50px;width:300px;height:250px;font-size: 20px;">
	
 


<tr><th>Password :</th><td><input type="text" name="password" id="password"></td></tr>

 <tr><th>Company Name :</th><td><input type="text" name="companyname" id="companyname"></td></tr>
 <tr><th>Address :</th><td><input type="text" name="address" id="address"></td></tr>
 <tr><th>Email :</th><td><input type="email" name="email" id="email"></td></tr>
 <tr><th>Phone no :</th><td><input type="text" name="phoneno" id="phoneno"></td></tr>
 <tr><th>CEO name:</th><td><input type="text" name="ceoname" id="ceoname"></td></tr>
 <tr><th>Date of reg. :</th><td><input type="date" name="dateofreg" id="dateofreg"></td></tr>


	
<tr><th colspan="2"><button ">Update profile</button></th></tr>
</table>
</form></center>

<form action="/ecommerce/jsp/viewcourseco.jsp" method="get">
<button onclick="callpage()" style="background-color: orange;width:850px;padding:20px;font-size:30px;position: absolute;margin-top: 80px;height:70px;margin-left: -100px;margin-bottom: 50px"><a>View all avaliable training</a></button>
</form>
<br><br><br>


</div>
<br><br><br>
<div style="height:200px;background-color: #38364F  ;color:red;padding:25px;margin-top: 1020px;width:1420px;margin-left: -40px;position: absolute;"><p style="font-size: 20px;color:white"><a style="color:white" href="/ecommerce/html/tour.html"><br>About DigitalHQTraining: The quick and affordable online training management 
solution for organizations to train, test and track their employees, students, customers
 or vendors. Courseplay is the property of Firstventure Corporation Private Limited, an 
 up-and-coming privately-funded education-technology company founded in March 2012, headquartered in Mumbai, India.</a>
<br><br><br><br><b>DigitalHQTraining Online Training Platform © 2016. All Rights Reserved.</b></p></div>
</div>

</body>
</html>



