
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
<body style="background-image: url('/ecommerce/images/trocover.jpg');">
<div style="position:absolute;width:700px;height:400px;background-color: menu;margin-left: 300px;margin-top: 120px;padding:20px;overflow: scroll;">
 <% 
Connection con=null;
PreparedStatement ps=null;
ResultSet rs=null;
con=Crudoperation.createConnection();
String strsql="select * from trainingschedue where scheduledid!='null'";
rs=Crudoperation.getData(strsql);
 %>
 
 <center><table border='1' style="margin-top:50px">
 <tr><th><h3 >Scheduled id</h3></th><th><h3 >Topic id</h3></th><th><h3 >Date</h3></th><th><h3 >Venue</h3></th><th><h3 >No. of seats</h3></th><th><h3 >Trainer name</h3></th><th><h3>Charge per candidate</h3></th></tr>
	<% 
	try
	{
		while(rs.next())
		{
			
%>
 

<tr><th><h4 ><%=rs.getString("scheduledid") %></h4></th><th><h4 ><%=rs.getString("topicid") %></h4></th><th><h4 ><%=rs.getString("date") %></h4></th><th><h4 ><%=rs.getString("venue") %></h4></th><th><h4 ><%=rs.getString("no of seat") %></h4></th><th><h4 ><%=rs.getString("trainer name") %></h4></th><th><h4 ><%=rs.getString("charge per candidate") %></h4></th></tr>

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



</div></body>
</html>