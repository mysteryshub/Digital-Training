<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    
    <%@page import="ecommerce.db.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Compose msg</title>
</head>
<body style="background-image: url('/ecommerce/images/composebackg.jpg');">
<div></div>
<div style="margin-left: 20px;margin-top: 30px;width:1350px;height: 600px;float: left;">

<form   action="/ecommerce/Compose" method="post" >

<%String ms=request.getParameter("msg"); %>

<p align="center" style="font-size:30px;color:black;position: absolute;margin-top: 130px;margin-left: 230px">COMPOSE</p>

<table  cellpadding="1"   style="background-color: menu;border-style: solid;border-color: black;position: absolute;width: 600px;height:250px;margin-top: 180px;margin-left: 200px ;padding:20px">
<tr><th>Receiverid:</th>
<td><input style="width:600px" type="text" name="txtuserid" id="txtuserid" size="20" ></td></tr>
<tr><td colspan="2"><span id="info"></span></td></tr>
<tr><th>Subject</th>
<td><input style="width:600px" type="text" name="txtsubject" id="txtsubject"  size="30"></td></tr>
<tr><th>Message:</th>
<td><textarea  rows="15" cols="90	" name="txtmessage" id="txtmessage"  ></textarea></td></tr>

<tr><td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="submit" value="Submit" onselect="sendMsg()"></td></tr>
<%
if(ms!=null)
{%>


<h4 style ="color:red;font-size:25px;font-family:arial;position: absolute;margin-top:140px;margin-left:600px"><%=ms%></h4>

<%} %>







</table>
</form>



</div>
</body>
</html>