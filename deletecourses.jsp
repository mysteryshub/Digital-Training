
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
tr th
{
padding:12px;}

</style>

</head>
<body style="background-image: url('/ecommerce/images/trocover.jpg');">
<% String msgd=(String)request.getAttribute("msg");%>
<%if(msgd!=null)
	{
	System.out.println("in if"+msgd);
	%>
	<p style="position: absolute;margin-top: 125px;margin-left: 500px;font-size: 25px;color:red"><%=msgd %></p>

<%} %>
<div style="position:absolute;width:500px;height:400px;background-color: menu;margin-left: 300px;margin-top: 120px;padding:20px;overflow: scroll;">
 <form method="post" action="/ecommerce/Deletecourses">
 <% 
Connection con=null;
PreparedStatement ps=null;
ResultSet rs=null;
con=Crudoperation.createConnection();
String strsql="select * from trainingschedue where scheduledid!='null'";
 rs=Crudoperation.getData(strsql);
 %><table border="3" style="padding:20px">
	<tr><th>Delete</th><th>Scheduled id</th><th>Topic id</th><th>Date</th><th>Venue</th></tr>
	<%
	try
	{
		while(rs.next())
		{
			%>
			<tr><th><input type="checkbox" name="chk" value="<%=rs.getString("scheduledid") %>"></th><th><%=rs.getString("scheduledid") %></th><th><%=rs.getString("topicid") %></th><th><%=rs.getString("date") %></th><th><%=rs.getString("venue") %></th></tr>
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
	<tr><th style="border-style: none;"><br></th></tr>
	<tr><td style="border-style: none;"colspan ="5" align="center"><input style="background-color: orange;width:200px;height:30px" type="submit" value="delete"></td></tr>
	</table>
	</form>
 </div></body></html>
 