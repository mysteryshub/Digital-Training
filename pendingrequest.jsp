
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
<title>Pending Request</title>
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
</head>
<body>

<img id="one"  src="/ecommerce/images/profilecover.jpg">
<p style="position: absolute;font-size: 50px;text-align: center;font-style: italic;margin-left: 600px;color:blue;"><b>DigitalHQ Training</b></p>
<img id="two" src="/ecommerce/images/men.jpg">
<a href="/ecommerce/jsp/compose.jsp" style="position:absolute;margin-left: 560px;margin-top: 210px;font-size: 25px;color:black" href="">Compose</a>
<a href="/ecommerce/jsp/inbox.jsp" style="position:absolute;margin-left: 690px;margin-top: 210px;font-size: 25px;color:black" href="">Inbox</a>
<a href="/ecommerce/jsp/sentitem.jsp" style="position:absolute;margin-left: 850px;margin-top: 210px;font-size: 25px;color:black" href="">Sent item</a>
<% 
Connection con=null;
PreparedStatement ps=null;
ResultSet rs=null;
con=Crudoperation.createConnection();
String strsql="select * from trainingrequest where requeststatus='not accepted'";
rs=Crudoperation.getData(strsql);
 %>
 <p style="position: absolute;margin-top:370px;font-size: 45px;color:orange;margin-left: 430px ">Pending Request</p>
 <div style="position: absolute;margin-top: 460px;margin-left: 550px;background-color: menu;width:750px;height: 500px;border-style: solid;overflow: scroll">
 <form action="/ecommerce/Pendingrequest" method="post">
 <center><table  >
 
 <tr><th><h3 >Select</h3></th><th><h3 >Requested</h3></th><th><h3 >Scheduled id</h3></th><th><h3 >No of Candidate</h3></th><th><h3 >Date</h3></th><th><h3 >Request Status</h3></th><th><h3 >User id</h3></th><th><h3>Draft no</h3></th></tr>
	<% 
	try
	{
		while(rs.next())
		{
			
%>
 

<tr><th><h4 ><input type="checkbox" name="chkbox" id="chkbox" value="<% rs.getInt("requested");%>"></h4></th><th><h4 ><%=rs.getInt("requested") %></h4></th><th><h4 ><%=rs.getString("scheduledid") %></h4></th><th><h4 ><%=rs.getString("no of candidate") %></h4></th><th><h4 ><%=rs.getString("date") %></h4></th><th><h4 ><%=rs.getString("requeststatus") %></h4></th><th><h4 ><%=rs.getString("user id") %></h4></th><th><h4 ><%=rs.getString("draftno") %></h4></th></tr>
<tr><th colspan="8"><button type="submit" >Allot seat</button></th></tr>

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
</table></center></form>
</div>
<div style="height:200px;background-color: #38364F  ;color:red;padding:25px;margin-top: 1120px;width:1320px;margin-left: -0px;position: absolute;"><p style="font-size: 20px;color:white"><a style="color:white" href="/ecommerce/html/tour.html"><br>About DigitalHQTraining: The quick and affordable online training management 
solution for organizations to train, test and track their employees, students, customers
 or vendors. Courseplay is the property of Firstventure Corporation Private Limited, an 
 up-and-coming privately-funded education-technology company founded in March 2012, headquartered in Mumbai, India.</a>
<br><br><br><br><b>DigitalHQTraining Online Training Platform © 2016. All Rights Reserved.</b></p></div>
</div>	

</body>
</html>