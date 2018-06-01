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
<script>




function showcontrol(a,b,c)
{ 
	document.getElementById(a).style.display="block";
	document.getElementById(b).style.display="none";
	document.getElementById(b).style.display="none";

	
	}</script>

</head>
<body>
<img id="one"  src="/ecommerce/images/profilecover.jpg">
<p style="position: absolute;font-size: 50px;text-align: center;font-style: italic;margin-left: 600px;color:blue;"><b>DigitalHQ Training</b></p>
<img id="two" src="/ecommerce/images/men.jpg">
<a style="position:absolute;margin-left: 560px;margin-top: 210px;font-size: 25px;color:black" href="">Inbox</a>
<a style="position:absolute;margin-left: 690px;margin-top: 210px;font-size: 25px;color:black" href="">Sent items</a>
<a style="position:absolute;margin-left: 850px;margin-top: 210px;font-size: 25px;color:black" href="">Message</a>
<p style="position: absolute;font-size: 70px;color:olive;font-style: oblique;margin-top: 300px;margin-left: 450px">John S Smith</p>

<button style="width:220px;height:50px;margin-top: 430px;margin-left: 450px;background-color: orange;" onclick="showcontrol('div1','div2','div3')">Training Coordinator</button> 
<button style="width:220px;height:50px;margin-top: -50px;margin-left: 750px;background-color: orange" onclick="showcontrol('div2','div1','div3')">Trainer</button>
 <button style="width:220px;height:50px;margin-top:-50px;margin-left: 1100px;background-color: orange;" onclick="showcontrol('div3','div2','div1')">Training Organiser</button> 
 
 
 <div id="div1" style="background-color: menu;width:700px;height:500px;position: absolute;margin-top: 100px;margin-left: 450px;display:none;border-style: solid;overflow: scroll">
 <% 
Connection con=null;
PreparedStatement ps=null;
ResultSet rs=null;
con=Crudoperation.createConnection();
String strsql="select * from login where usertype=?";
 ps=con.prepareStatement(strsql);
 ps.setString(1,"training coordinator");
 System.out.println(ps);
 rs=ps.executeQuery();
 %>
 
 <center><table boder='4' style="margin-top:50px;width:320px;height:100px">
 <tr><th><h3 style="color:black">User id</h3></th><th><h3 style="color:black">User password</h3></th></tr>
	<% 
	try
	{
		while(rs.next())
		{
			
%>
 

<tr><th><h4 ><%=rs.getString("userid") %></h4></th><th><h4 ><%=rs.getString("userpassword") %></h4></th></tr>

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
</table></center>
</div>
 <div id="div2" style="background-color: menu;width:700px;height:500px;position: absolute;margin-top: 100px;margin-left: 450px;display:none;border-style: solid;overflow: scroll">
 <% 

ResultSet rs2=null;
con=Crudoperation.createConnection();
String strsql2="select * from login where usertype=?";
 ps=con.prepareStatement(strsql2);
 ps.setString(1,"trainer");
 System.out.println(ps);
 rs2=ps.executeQuery();
 %>
 
 <center><table boder='4' style="margin-top:50px;width:320px;height:100px">
 <tr><th><h3 style="color:black">User id</h3></th><th><h3 style="color:black">User password</h3></th></tr>
	<% 
	try
	{
		while(rs2.next())
		{
			
%>
 

<tr><th><h4 ><%=rs2.getString("userid") %></h4></th><th><h4 ><%=rs2.getString("userpassword") %></h4></th></tr>

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
		if(rs2!=null)
		{
			rs2.close();
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
</table></center>
</div>
<div id="div3" style="background-color: menu;width:700px;height:500px;position: absolute;margin-top: 100px;margin-left: 450px;display:none;border-style: solid;overflow: scroll">
 <% 

ResultSet rs3=null;
con=Crudoperation.createConnection();
String strsql3="select * from login where usertype=?";
 ps=con.prepareStatement(strsql2);
 ps.setString(1,"training organiser");
 System.out.println(ps);
 rs3=ps.executeQuery();
 %>
 
 <center><table boder='4' style="margin-top:50px;width:320px;height:100px">
 <tr><th><h3 style="color:black">User id</h3></th><th><h3 style="color:black">User password</h3></th></tr>
	<% 
	try
	{
		while(rs3.next())
		{
			
%>
 

<tr><th><h4 ><%=rs3.getString("userid") %></h4></th><th><h4 ><%=rs3.getString("userpassword") %></h4></th></tr>

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
		if(rs3!=null)
		{
			rs3.close();
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
</table></center>
</div>

 
<div style="height:200px;background-color: #38364F  ;color:red;padding:25px;margin-top: 820px;width:1320px;margin-left: -0px;position: absolute;"><p style="font-size: 20px;color:white"><a style="color:white" href="/ecommerce/html/tour.html"><br>About DigitalHQTraining: The quick and affordable online training management 
solution for organizations to train, test and track their employees, students, customers
 or vendors. Courseplay is the property of Firstventure Corporation Private Limited, an 
 up-and-coming privately-funded education-technology company founded in March 2012, headquartered in Mumbai, India.</a>
<br><br><br><br><b>DigitalHQTraining Online Training Platform © 2016. All Rights Reserved.</b></p></div>
</div>	
</body>
</html>