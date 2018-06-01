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
<title></title>
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
tr th{
padding:15	px;}

</style>
</head>
<body>
<img id="one"  src="/ecommerce/images/profilecover.jpg">
<p style="position: absolute;font-size: 50px;text-align: center;font-style: italic;margin-left: 600px;color:blue;"><b>DigitalHQ Training</b></p>
<img id="two" src="/ecommerce/images/men.jpg">
<a style="position:absolute;margin-left: 540px;margin-top: 210px;font-size: 25px;color:black" href="/ecommerce/jsp/compose.jsp">Compose</a>
<a style="position:absolute;margin-left: 710px;margin-top: 210px;font-size: 25px;color:black" href="/ecommerce/jsp/inbox.jsp">Inbox</a>
<a style="position:absolute;margin-left: 850px;margin-top: 210px;font-size: 25px;color:black" href="/ecommerce/jsp/sentitem.jsp">Sent item</a>
<p style="position: absolute;font-size: 70px;color:olive;font-style: oblique;margin-top: 300px;margin-left: 450px">John S Smith</p>
<div style="background-color: menu;padding:20px;width:600px;height:350px;position: absolute;margin-top: 400px;margin-left: 500px;overflow: scroll;">
<form  method="post" action="/ecommerce/Deleteaccount">
<%
	Connection con=null;
	PreparedStatement ps=null;
	ResultSet rs=null;
	con=Crudoperation.createConnection();
	String strsql="select * from login where usertype!='admin' ";
	 rs=Crudoperation.getData(strsql);
%>

	<table border="0" style="padding:20px">
	<tr><th>Delete</th><th>Userid</th><th>Userpassword</th><th>Usertype</th></tr>
	<%
	try
	{
		while(rs.next())
		{
			%>
			<tr><th><input type="checkbox" name="chk" value="<%=rs.getString("userid") %>"></th><th><%=rs.getString("userid") %></th></th><th><%=rs.getString("userpassword") %></th></th><th><%=rs.getString("usertype") %></th></tr>
			<% } 
	}
		catch(SQLException se)
	{
			System.out.println(se);
	}
	finally
	{
		try
		{
			if(rs!=null)
			{
				rs.close();
			}
		}
		catch(SQLException se)
		{
			System.out.println(se);
		}
	}
	
	%>
	<tr><td colspan ="4" align="center"><input type="submit" value="delete"></td></tr>
	</table>
	</form>


</div>
<div style="height:200px;background-color: #38364F  ;color:red;padding:25px;margin-top: 820px;width:1320px;margin-left: -0px;position: absolute;"><p style="font-size: 20px;color:white"><a style="color:white" href="/ecommerce/html/tour.html"><br>About DigitalHQTraining: The quick and affordable online training management 
solution for organizations to train, test and track their employees, students, customers
 or vendors. Courseplay is the property of Firstventure Corporation Private Limited, an 
 up-and-coming privately-funded education-technology company founded in March 2012, headquartered in Mumbai, India.</a>
<br><br><br><br><b>DigitalHQTraining Online Training Platform © 2016. All Rights Reserved.</b></p></div>
</div>	
</body>
</html>