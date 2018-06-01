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
<style>
#two{
position: absolute;
margin-top: 150px;margin-left: 100px;

}
#one {
position: absolute;}
li
{list-style-type: none;
font-size: 15px;
padding:10px;
}

</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add news</title>
</head>
<body>
<img id="one"  src="/ecommerce/images/profilecover.jpg">
<p style="position: absolute;font-size: 50px;text-align: center;font-style: italic;margin-left: 600px;color:blue;"><b>DigitalHQ Training</b></p>
<img id="two" src="/ecommerce/images/men.jpg">
<a style="position:absolute;margin-left: 540px;margin-top: 210px;font-size: 25px;color:black" href="/ecommerce/jsp/compose.jsp">Compose</a>
<a style="position:absolute;margin-left: 710px;margin-top: 210px;font-size: 25px;color:black" href="/ecommerce/jsp/inbox.jsp">Inbox</a>
<a style="position:absolute;margin-left: 850px;margin-top: 210px;font-size: 25px;color:black" href="/ecommerce/jsp/sentitem.jsp">Sent item</a>
<div style="font-size: 50px;margin-top: 300px;margin-left: 500px;position: absolute;color:orange">
<form method="post" action="/ecommerce/Addnews">
<table>
<tr><th>Enter news</th></tr><tr><td><textarea rows="15" cols="100" name="news" id="news"  ></textarea></td></tr>
<tr><th><button type="Submit">Submit</button></th></tr></table>
</form>
</div>

</form>
<div style="height:200px;background-color: #38364F  ;color:red;padding:25px;margin-top: 820px;width:1320px;margin-left: -0px;position: absolute;"><p style="font-size: 20px;color:white"><a style="color:white" href="/ecommerce/html/tour.html"><br>About DigitalHQTraining: The quick and affordable online training management 
solution for organizations to train, test and track their employees, students, customers
 or vendors. Courseplay is the property of Firstventure Corporation Private Limited, an 
 up-and-coming privately-funded education-technology company founded in March 2012, headquartered in Mumbai, India.</a>
<br><br><br><br><b>DigitalHQTraining Online Training Platform © 2016. All Rights Reserved.</b></p></div>
</div>	

</body>
</html>