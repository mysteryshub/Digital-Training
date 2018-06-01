<%@page import="java.sql.SQLException"%>
<%@page import="ecommerce.db.Crudoperation"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Training Organiser</title>
</head>
<body>
<img style="position: absolute;" src='/ecommerce/images/tocover.jpg' >
<p style="position:  absolute;margin-top: 33px;margin-left: 560px;font-size: 42px;color: fuchsia;"><b>DigitalHQ Training</b></p>
<img style="position: absolute;margin-top: 170px;margin-left: 200px" src='/ecommerce/images/photo.jpg'>
<% HttpSession hs=request.getSession(false);
String userid=(String)hs.getAttribute("userinfo");

String actpath=null;
	%>
	<a href="/ecommerce/jsp/compose.jsp" style='position: absolute;margin-top: 230px;margin-left: 680px;font-size: 30px;color:black'>Compose</a>
	<a href="/ecommerce/jsp/inbox.jsp" style='position: absolute;margin-top: 230px;margin-left: 840px;font-size: 30px;color:black'>Inbox</a>
	<a href="/ecommerce/jsp/sentitem.jsp" style='position: absolute;margin-top: 230px;margin-left: 970px;font-size: 30px;color:black'>Sent item</a>
		<a href="/ecommerce/Logout" style='position: absolute;margin-top: 230px;margin-left: 1200px;font-size: 30px;color:black'>Logout</a>
	
	<p style="position: absolute;margin-top: 300px;margin-left: 450px;font-size: 50px;color:orange;">Hello <%=userid %></p>
		<a href="/ecommerce/jsp/home.jsp" style="margin-left:1200px; ;color:black;text-decoration: underline;font-size: 20px;position: absolute;margin-top: 300px"><b>Home</b></a>
	
	<div style="position:absolute;margin-top:400px;margin-left: 500px;width:300px;height:250px;font-size: 20px;background-color: menu;padding:20px">
	<a href="/ecommerce/jsp/addcourses.jsp">Add courses</a><br><br><br>
	<a href="/ecommerce/jsp/updatecourses.jsp">Update courses</a><br><br><br>
	<a href="/ecommerce/jsp/deletecourses.jsp">Delete Courses</a><br><br><br>
	<a href="/ecommerce/jsp/viewcourses.jsp">View all courses</a><br><br><br>
	</div>
<div style="height:200px;background-color: #38364F  ;color:red;padding:25px;margin-top: 820px;width:1320px;margin-left: -0px;position: absolute;"><p style="font-size: 20px;color:white"><a style="color:white" href="/ecommerce/html/tour.html"><br>About DigitalHQTraining: The quick and affordable online training management 
solution for organizations to train, test and track their employees, students, customers
 or vendors. Courseplay is the property of Firstventure Corporation Private Limited, an 
 up-and-coming privately-funded education-technology company founded in March 2012, headquartered in Mumbai, India.</a>
<br><br><br><br><b>DigitalHQTraining Online Training Platform © 2016. All Rights Reserved.</b></p></div>
</div>	
	
</body>
</html>