<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"  %>
    <%@page import="ecommerce.ser.*" %>
     <%@page import="ecommerce.db.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Message</title>
</head>
<body style="background-image: url('/ecommerce/images/composebackg.jpg');">
<div></div>
<div style="margin-left: 20px;margin-top: 30px;width:1000px;height: 900px;float: left;">
<% 
HttpSession hs=request.getSession(false);
String userid=(String)hs.getAttribute("userinfo");
if((userid==null)||(hs.isNew()))
{
	response.sendRedirect("/ecommerce/jsp/home.jsp");
}
else
{
ResultSet rs=null;
Connection con=null;
PreparedStatement ps=null;


String ms=request.getParameter("msgId");
System.out.println(ms);
String str="select * from message where messageid=? ";
con=Crudoperation.createConnection();
try
{
ps=con.prepareStatement(str);
ps.setString(1, ms);


rs=ps.executeQuery();
System.out.println(ps);
if(rs.next())
{%>
<p style="position: absolute;margin-top: 120px;margin-left: 220px;font-size: 30px"> <b>Message</b></p>
<table  cellpadding="1"   style="background-color: menu;border-style: solid;border-color: black;position: absolute;width: 600px;height:250px;margin-top: 180px;margin-left: 200px ;padding:20px">

	<tr><th>From:</th><td><%=rs.getString("senderid")%></td></tr>
	<tr><th>Subject:</th><td><%=rs.getString("subject") %></td></tr>
	<tr><th>Message:</th><td><%=rs.getString("messagetext") %></td></tr>
	</table>
<% }

}
catch(SQLException se)
{
}	
}%>
</div>
</body>
</html>