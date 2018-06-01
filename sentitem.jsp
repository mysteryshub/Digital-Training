<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.*" %>
    
    <%@page import="ecommerce.ser.*" %>
    <%@page import="ecommerce.db.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Inbox</title>
</head>
<body style="background-image: url('/ecommerce/images/composebackg.jpg');">



<form  method="post" action="/ecommerce/Senditem" >

<% 
HttpSession hs=request.getSession(false);
String userid=(String)hs.getAttribute("userinfo");
if((userid==null)||(hs.isNew()))
{
	response.sendRedirect("/ecommerce/jsp/home.jsp");
}
else
{%>
<p  align="center" style="font-size:30px;color:black;position: absolute;margin-top: 130px;margin-left: 230px"><b>SENT ITEM</b></p>
<table border="4" cellpadding="1"   style="background-color: menu;border-style: solid;border-color: black;position: absolute;width: 600px;height:250px;margin-top: 180px;margin-left: 200px ;padding:20px;overflow: scroll;">
 
<tr style="color:black;font-size: 20px"><th>Select</th><th>Reciever  id</th><th>Subject</th><th>Date</th></tr>
<%
ResultSet rs=null;
Connection con=null;
PreparedStatement ps=null;
String strsql="select * from message where senderid=? and sstatus=? ";
con=Crudoperation.createConnection();
try
{
	ps=con.prepareStatement(strsql);
	ps.setString(1, userid);
	ps.setString(2, "false");
	System.out.println(ps);
	rs=ps.executeQuery();
	while(rs.next())
	{%>
	
	<tr><td><input type="checkbox" name="chk" value= "<%=rs.getString("messageid")%>"></td>
	
	<td><%=rs.getString("recieverid") %></td>
	<td><a href="/ecommerce/jsp/showmessage.jsp?msgId=<%=rs.getString("messageid") %>"  ><%=rs.getString("subject") %></a></td>
	<td><%=rs.getString("date")%></td></tr>
	

	
	<%}
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
}%>
<tr><th colspan="4" style="border-style: none;"><input type="submit" value="delete"></th></tr> 
</table>


<%} %>
</form>
 







</div>
</body>
</html>