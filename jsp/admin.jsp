<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin</title>
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
<body >
<% 
HttpSession hs=request.getSession(false);
String userid=(String)hs.getAttribute("userinfo");
if((userid==null)||(hs.isNew()))
{
	response.sendRedirect("/ecommerce/jsp/home.jsp");
}
else
{%>
<img id="one"  src="/ecommerce/images/profilecover.jpg">
<p style="position: absolute;font-size: 50px;text-align: center;font-style: italic;margin-left: 600px;color:blue;"><b>DigitalHQ Training</b></p>
<img id="two" src="/ecommerce/images/men.jpg">
<a style="position:absolute;margin-left: 540px;margin-top: 210px;font-size: 25px;color:black" href="/ecommerce/jsp/compose.jsp">Compose</a>
<a style="position:absolute;margin-left: 710px;margin-top: 210px;font-size: 25px;color:black" href="/ecommerce/jsp/inbox.jsp">Inbox</a>
<a style="position:absolute;margin-left: 850px;margin-top: 210px;font-size: 25px;color:black" href="/ecommerce/jsp/sentitem.jsp">Sent item</a>
<a style="position:absolute;margin-left: 1200px;margin-top: 210px;font-size: 25px;color:black" href="/ecommerce/Logout">Logout</a>

<a href="/ecommerce/jsp/home.jsp" style="margin-left:1200px; ;color:black;text-decoration: underline;font-size: 20px;position: absolute;margin-top: 300px"><b>Home</b></a>

<p style="position: absolute;font-size: 70px;color:olive;font-style: oblique;margin-top: 300px;margin-left: 450px">John S Smith</p>
<p style="position: absolute;margin-top: 550px;margin-left: 500px;font-size: 18px"> John S Smith (born October 28, 1955) is an American business magnate, entrepreneur, philanthropist, investor, and programmer.[2][3] In 1975, Gates and Paul Allen co-founded Microsoft, which became the world's largest PC software company. During his career at Microsoft, Gates held the positions of chairman,
 CEO and chief software architect, and was the largest individual shareholder until May 2014.[4][a]
  Gates has authored and co-authored several books.

Starting in 1987, Gates was included in the Forbes
 list of the world's wealthiest people[7] and was the wealthiest from 1995 to 2007,
  again in 2009, and has been since 2014.[8] Between 2009 and 2014, his wealth doubled from US$40 billion to more 
  than US$82 billion.[9] Between 2013 and 2014, his wealth increased by US$15 billion.[10] Gates is currently the 
  wealthiest person in the world with a net worth of US$76.4 billion</p>
  <div style="position: absolute;margin-left: 100px;margin-top: 500px;background-color: menu;width:240px;height:320px"> 
  <ul>
 <li> <a href="/ecommerce/jsp/addaccount.jsp">Add Account</a></li>
   
  <li><a href="/ecommerce/jsp/deleteaccount.jsp">Delete Account</a></li>
  <li><a href="/ecommerce/jsp/viewaccount.jsp">View Account</a></li>
  <li><a href="/ecommerce/jsp/pendingrequest.jsp">Pending Request</a></li>
  <li><a href="/ecommerce/jsp/addnews.jsp">Add News</a></li>
  </ul></div>

<div style="height:200px;background-color: #38364F  ;color:red;padding:25px;margin-top: 820px;width:1300px;margin-left: 0px;position: absolute;padding: 20px"><p style="font-size: 20px;color:white"><a style="color:white;padding: 20px" href="/ecommerce/html/tour.html"><br>About DigitalHQTraining: The quick and affordable online training management 
solution for organizations to train, test and track their employees, students, customers
 or vendors. Courseplay is the property of Firstventure Corporation Private Limited, an 
 up-and-coming privately-funded education-technology company founded in March 2012, headquartered in Mumbai, India.</a>
<br><br><br><br><b>DigitalHQTraining Online Training Platform © 2016. All Rights Reserved.</b></p></div>
</div>
<%} %>
</body>
</html>