

<%@page import="ecommerce.db.Crudoperation"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<style>
a{text-decoration: none;
color:white;

}

.blinktext
{
animation-duration: 400ms;
  animation-name: blink;
  animation-iteration-count: infinite;
  animation-direction:alternate;

}
@keyframes blink {
  from {
    opacity: 2;
  }

  to {
    opacity: 0.1;
  }
}
a:HOVER{
color:blue;
background-color: white;width:100x;
}
td{
padding:20px;text-align: justify;}
table{
padding:20px;}
.link{
text-decoration: none;color: black;font-size: 32px;position: absolute;margin-top: 20px}
</style>
<script>
var arr=new Array(2);
arr[0]="/ecommerce/images/slideshow1.jpg";
arr[1]="/ecommerce/images/slide2.jpg";
arr[2]="/ecommerce/images/slide3.jpg";
arr[3]="/ecommerce/images/slide4.jpg";
arr[4]="/ecommerce/images/slide5.jpg";
arr[5]="/ecommerce/images/slide6.jpg";
arr[6]="/ecommerce/images/slide7.jpg";
arr[7]="/ecommerce/images/slide8.jpg"; 
var i=0;
function changeimage()
{ 
	//alert("in fun");
	
	 document.getElementById("im").src=arr[i];
	i++;
	if(i>7)
		i=0;
	setTimeout("changeimage()", 1000); 
}
</script>

</head>
<body onload="changeimage()">

<div id="logo" style="background-image:url('/ecommerce/images/logo.jpg');width:100%;height:200px;position:absolute;" >

</div>
<div>
<div style="position:relative;float:left;margin-right:62px;margin-left:600px;margin-top:140px;font-size: 30px;color:white"><a href="/ecommerce/html/tour.html">Tour</a></div>
<div style="position:relative;float:left;margin-right:62px;font-size: 30px;margin-top:140px;color:white"><a href="/ecommerce/html/features.html">Features</a></div>
<div style="position:relative;float:left;margin-right:62px;font-size: 30px;color:white;margin-top:140px"><a href="/ecommerce/html/contactus.html">Contact us</a></div>
<div style="position:relative;float:left;margin-right:62px;font-size: 30px;color:white;margin-top:140px"><a href="/ecommerce/jsp/courses.jsp">Courses</a></div>
<div style="position:relative;float:left;font-size: 30px;color:white;margin-top:140px"><a href="/ecommerce/jsp/signin.jsp">Sign in</a></div>
</div>
<div  style="background-image:url('/ecommerce/images/logobelow.jpg');position:absolute;margin-top: 200px;width:1400px;height:430px">
</div>
<div style="width:100%;height:1000px;position:absolute;margin-top: 550px;padding:15px">
<br>

<br>
<br>

<p style="color:orange;font-size:45px;text-align: center"><b>Modern Training for your Entire Organization in 4 Easy Steps</b></p>
<br>
<img style="position: absolute;margin-top: -70px"src="/ecommerce/images/homes.jpg">
<table style="padding=40px">
<tr><td><a class="link" href="/ecommerce/html/features.html"><b>AUTHENTICATE</b></a><br></td>
<td><a class="link"  href="/ecommerce/html/features.html"><b>DELIVER</b></a><br></td>
<td><a class="link" href="/ecommerce/html/features.html"><b>ENGAGE</b></a><br></td>
<td><a class="link" href="/ecommerce/html/features.html"><b>MEASURE</b></a><br></td>
</tr>
<tr><td>
<p style="font-size: 20px">Authenticate users at each step of
<br> the training process to ensure<br> training programs are on target<br> and deliver better results</p></td>
<td>
<p style="font-size: 20px"><br>Quickly set up and deliver any kind
<br> of e-learning content to any device, <br>
anytime, anywhere and retain full<br>
 access control</p></td>
 <td><p style="font-size: 20px"><br>Make training and testing <br>more
  enjoyable for learners <br>with our
   intuitive and engaging <br>interface so
    they return for more</td>
    <td><p style="font-size: 20px"><br>Track and analyze learner progress<br>
     to get detailed insight on your<br>
      training programs and maximize your<br>
       return on investment</td>
    </tr>
<br><br>
 </table >
 <%ResultSet rs2=null;
 String strsql2="select * from addnews limit 1 ";
  rs2=Crudoperation.getData(strsql2); %>
 <% 
	try
	{
		while(rs2.next())
		{
 %>
 <marquee direction="left" scrollamount="12" "><p style="color:red;margin-bottom: 15px;font-size: 20px"><b><%=rs2.getString("news") %></b></p><br></marquee>
 
 <%}}
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
		
	}
	catch(SQLException se)
	{
		System.out.println(se);
	}
}
 %>
 
 <p  id="blinktext"style="color:orange;font-size:45px;text-align: center;margin-left: 20px"><b>Available trainings</b> </p>
 <div style="background-color: #CEADB5  "> 
 <% 
Connection con=null;
PreparedStatement ps=null;
ResultSet rs=null;
con=Crudoperation.createConnection();
String strsql="select * from trainingschedue where scheduledid!='null' limit 8";
 rs=Crudoperation.getData(strsql);
 %>

 <a href="/ecommerce/jsp/signin.jsp"><img src="/ecommerce/images/course1.jpg"></a>
 

  <a href="/ecommerce/jsp/signin.jsp"><img src="/ecommerce/images/course2.jpg"> </a>
  
<a href="/ecommerce/jsp/signin.jsp">  <img src="/ecommerce/images/course3.jpg"></a>

  
  <a href="/ecommerce/jsp/signin.jsp"><img src="/ecommerce/images/course4.jpg"></a>
 
   <br><br><br>
   <% 
	try
	{
		while(rs.next())
		{
			
%>

<p style="float:left;font-size: 20px;margin-right: 220px;color:red;margin-top: -55px"> <a style="color:blue;"href="/ecommerce/jsp/signin.jsp"><%=rs.getString("scheduledid") %></a></p>








<%
	} %>
		</tr></table>
	<%}
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
   
   
   
   
 <a href="/ecommerce/jsp/signin.jsp">  <img src="/ecommerce/images/course5.jpg" ></a>
    <a href="/ecommerce/jsp/signin.jsp"> <img src="/ecommerce/images/course6.jpg"></a>
     <a href="/ecommerce/jsp/signin.jsp"> <img src="/ecommerce/images/course7.jpg"></a>
      <a href="/ecommerce/jsp/signin.jsp"><img src="/ecommerce/images/course8.jpg"></a>
    
 <br><br>
 <form method="get" action="/ecommerce/jsp/courses.jsp">
 

<button style="margin-left: 300px;width:500px;height:50px;background-color:#903C50  ;font-size: 30px" > View More Courses</button>
 </form>
 
 </div>


<br><br>
 <table style="width:95%;height:500px">
 <tr>
 <th colspan="2" style="font-size:45px;color:orange "><b>Why DigitalHQTraining</b></th></tr>
<tr id=""><th rowspan="3"  style="align:center"><img id="im" src="/ecommerce/images/slide8.jpg"></th>
<td><h1><b>Autonomy</b></h1><br>
With DigitalHQTraining we want to make it easy for you to set up a<br> training program
 in your company and then leave it to let it work <br>for you. We focus on providing an edtech platform that requires <br>
 minimal setup, minimal training and minimal oversight to allow you <br>
 to focus on more important things.</td></tr>
<tr><td><h1><b>Accountability</b></h1><br>
With DigitalHQTraining you can authenticate all the users in your <br>
organization and measure the impact of your training program,<br>
 making your people accountable for their performance in the<br>
  classroom and in the workplace.
</td></tr>
<tr><td><h1><b>Accessability</b></h1><br>
DigitalHQTraining is a cloud-based and responsive training platform,<br>
 which means that all your employees  is a web-browser and an<br>
  internet connection to take your training programs with them <br>
  wherever they go!
</td></tr>
</table>
<br><br>
<div style="position:relative ;height:500px;background-color: windowframe;">
<table  style="width:95%"; height:100%>
<tr><td class="blinktext"><font size="50px" color="blue" ><b>97%</b></font><br>Customer Satisfaction</td>
<td class="blinktext"><font size="50px" color="blue" ><b>67%</b></font><br>Savings Incurred</td>
<td class="blinktext"><font size="50px" color="blue" ><b>INR59</b></font><br>Average Monthly User Cost</td>
<td class="blinktext"><font size="50px" color="blue" ><b>560</b></font>
<br>Market Place Courses</td>
</tr>
<tr ><td colspan="4"><font size="6px" color=green>"Great customer service, very adaptive in improving the product, good look and feel of the product, good concept."</font>
<br><br>Aditya Maurya Vice President-Marketing at Sankalp energy</td></tr>
<tr ><td colspan="4"><img src="/ecommerce/images/clients.jpg"></td></tr>

</table>
</div>
<div style="width:1400px;height:130px;position:relative;padding:40px;background-color: #18107E  ">
<p style="font-size: 45px;color:white;">Would you like to tour a DigitalHQTrainning  <a href="/ecommerce/html/tour.html" style="border-style:solid;border-color:white;margin-left: 80px;PADDING:15PX;font-size: 25px">TAKE A TOUR</a></p>

</div>
<br>
<div style="height:200px;background-color: #38364F  ;padding:25px"><p style="font-size: 20px"><br><a href="/ecommerce/html/tour.html" >About DigitalHQTraining: The quick and affordable online training management solution for organizations to train, test and track their employees, students, customers or vendors. Digital HQ is the property of Firstventure Corporation Private Limited, an up-and-coming privately-funded education-technology company founded in March 2012, headquartered in Mumbai, India.</a>
<br><br><br><br><b>DigitalHQTraining Online Training Platform © 2016. All Rights Reserved.			   </a></b></p></div>
</div>

</body>

</html>