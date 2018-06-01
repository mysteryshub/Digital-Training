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
<div style="position:absolute;width:400px;height:320px;background-color: menu;margin-left: 400px;margin-top: 200px;padding:20px">

	
<form method="post" action="/ecommerce/Addcourses">

<table border="4"style="font-size: 17px;padding:15px">

<tr><th>Scheduled id<sup >*</sup></th><td><input type="text" name="scheduledid" id="scheduledid" placeholder="Unique User Id"></td></tr>
<tr><th>Topic id<sup >*</sup></th><td><input type="text" name="topicid" id="topicid" placeholder="topic id"></td></tr>
<tr><th>Date<sup >*</sup></th><td><input type="date" placeholder="Your Company Name" name="date" id="date" required="required"></td></tr>
<tr><th>Venue<sup >*</sup></th><td><input type="text" placeholder="Venue" name="venue" id="venue" required="required"></td></tr>
<tr><th>No Of Seats<sup >*</sup></th><td><input type="number" placeholder="No of Seats" name="noofseat" id="noofseat" required="required"></td></tr>
<tr><th>Trainer Name</th><td><input type="text" placeholder="Trainer name" name="trainername" id="trainername" required="required"></td></tr>
<tr><th>Charge per candidate</th><td><input type="text" placeholder="charge per candidate" name="charge" id="charge" required="required"></td></tr>

<tr><th colspan="2" ><br><button style="width:200px;background-color: orange" value="submit" )">Add Training</button></th>

</table>

</form>
</div>











</body>
</html>