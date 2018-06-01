
<%@page import="ecommerce.db.Crudoperation"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Connection"%><%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-image: url('/ecommerce/images/trocover.jpg');">

<%String msid=request.getParameter("radio"); %>
<form method="post" action="/ecommerce/Apply">
<input type="hidden" name="schedid" id="schedid" value="<%=msid %>">
<table style="background-color: menu;width:400px;height:300px;padding:10px;position: absolute;margin-top: 150px;margin-left: 500px">
<tr><th>Course selected</th><td><%=msid%></td></tr>

<tr><th>No of Candidate</th><td><input type="number" name="noofcandidate" value="noofcandidate" onblur="check()"></td></tr>
<tr><th>Date</th><td><input type="date" name="date" value="date"></td></tr>


<tr><th>Draft no.</th><td><input type="text" name="draftno" id="draftno"></td></tr>
<tr><th colspan="2"><button>Submit</button></th></tr>

 






</table>









</form>




</body>
</html>