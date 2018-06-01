
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
<img style="position: absolute;"src= "/ecommerce/images/trainercover.jpg">
<p style="position: absolute;margin-top: 20px;margin-left:500px;font-size: 40px;color:orange"><b>Digital HQ training</b> 	
</p>
<img style="position:absolute;margin-left: 200px;margin-top: 200px " src="/ecommerce/images/photo.jpg">
<a href="/ecommerce/jsp/compose.jsp" style='position: absolute;margin-top: 230px;margin-left: 550px;font-size: 30px;color:black'>Compose</a>
	<a href="/ecommerce/jsp/inbox.jsp" style='position: absolute;margin-top: 230px;margin-left: 750px;font-size: 30px;color:black'>Inbox</a>
	<a href="/ecommerce/jsp/sentitem.jsp" style='position: absolute;margin-top: 230px;margin-left: 900px;font-size: 30px;color:black'>Sent items</a>
		<a href="/ecommerce/Logout" style='position: absolute;margin-top: 230px;margin-left: 1200px;font-size: 30px;color:black'>Logout</a>
	
	<a href="/ecommerce/jsp/home.jsp" style="margin-left:1200px; ;color:black;text-decoration: underline;font-size: 20px;position: absolute;margin-top: 300px"><b>Home</b></a>
	<% HttpSession hs=request.getSession(false);
String userid=(String)hs.getAttribute("userinfo");

String actpath=null;
	%>	<p style="position: absolute;margin-top: 300px;margin-left: 450px;font-size: 50px;color:orange;">Hello <%=userid %></p>
	<div style="position:absolute;width:500px;height:300px;background-color: #FFC488  ;border-style:solid;    ;margin-left: 300px;margin-top: 450px;padding:10px;">
 <% 
Connection con=null;
PreparedStatement ps=null;
ResultSet rs=null;
con=Crudoperation.createConnection();
String strsql="select * from registrationtrainer where userid=?"; 
ps=con.prepareStatement(strsql);
ps.setString(1,userid);
rs=ps.executeQuery();
 %>
 <form method="get"  action="/ecommerce/editprofile.jsp">
 <center><table bord='' style="margin-top:50px;width:300px;height:250px;font-size: 20px;">
	<% 
	try
	{
		while(rs.next())
		{
			
%>
 

<tr><th>User id :</th><td><%=rs.getString("userid") %></td></tr>
 <tr><th>Trainer Name :</th><td><%=rs.getString("trainername") %></td></tr>
 <tr><th>Address :</th><td><%=rs.getString("address") %></td></tr>
 <tr><th>Email :</th><td><%=rs.getString("email") %></td></tr>
 <tr><th>Phone no :</th><td><%=rs.getString("phone no") %></td></tr>
 
<%
	}
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
		if(ps!=null)
		{
			ps.close();
		}
	}
	catch(SQLException se)
	{
		System.out.println(se);
	}
}
	
%>
<tr><th><button onclick="callfunction()">Edit profile</button></th></tr>
</table>
</form></center>
	<div style="height:200px;background-color: #38364F  ;color:red;padding:25px;margin-top: 300px;width:1320px;margin-left: -320px;position: absolute;"><p style="font-size: 20px;color:white"><a style="color:white" href="/ecommerce/html/tour.html"><br>About DigitalHQTraining: The quick and affordable online training management 
solution for organizations to train, test and track their employees, students, customers
 or vendors. Courseplay is the property of Firstventure Corporation Private Limited, an 
 up-and-coming privately-funded education-technology company founded in March 2012, headquartered in Mumbai, India.</a>
<br><br><br><br><b>DigitalHQTraining Online Training Platform © 2016. All Rights Reserved.</b></p></div>
</div>
	
	</body></html>
	