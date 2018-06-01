<%@page import="ecommerce.db.Crudoperation"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
a{text-decoration: none;
color:white;
}
a:HOVER{
color:blue;
background-color: white;

}Digital HQ
table{
align:center}
</style>
<script>
 var arr=new Array(5);var i=0;
arr[0]="/ecommerce/images/training1.jpg";
	arr[1]="/ecommerce/images/training2.jpg";
		arr[2]="/ecommerce/images/training3.jpg";
			arr[3]="/ecommerce/images/training4.jpg";
			arr[4]="/ecommerce/images/training5.jpg" ;
		
function changeimage()
{
	
	 document.getElementById("ghu").src=arr[i];
	i++;
	if(i>4)
		{
		i=0
		}
	setTimeout("changeimage()",1200);
	 
}


</script>
</head>
<body onload="changeimage()">
<div id="logo" style="background-image:url('/ecommerce/images/logo.jpg');width:100%;height:200px;position:absolute;" >

</div>
<div>
<div style="position:relative;float:left;margin-right:65px;margin-left:600px;margin-top:140px;font-size: 30px;color:white"><a href="/ecommerce/html/tour.html">Tour</a></div>
<div style="position:relative;float:left;margin-right:65px;font-size: 30px;margin-top:140px;color:white"><a href="/ecommerce/html/features.html">Features</a></div>
<div style="position:relative;float:left;margin-right:65px;font-size: 30px;color:white;margin-top:140px"><a href="/ecommerce/html/contactus.html">Contact us</a></div>
<div style="position:relative;float:left;margin-right:65px;font-size: 30px;color:white;margin-top:140px"><a href="/ecommerce/jsp/courses.jsp">Courses</a></div>
<div style="position:relative;float:left;font-size: 30px;color:white;margin-top:140px"><a href="/ecommerce/jsp/signin.jsp">Sign in</a></div>
</div>
<a href="/ecommerce/jsp/home.jsp" style='margin-left:-100px; color:black;text-decoration: underline;font-size: 20px;position: absolute;margin-top: 220px'><b>Home</b></a>

<div style="position: absolute;margin-top: 220px;padding:50px; ">
<p style="font-size: 45px;color:blue;font-style: italic;margin-left: -180px;background-color: menu;width:100%;padding:20px;text-align:center">Courses</p>
<p style="color:orange;font-size:45px;text-align: center">With Digital HQ you can create your own content or use ours!</p>

<p style="font-size: 90px;margin-top: -28px;">560<br></p>
<p style="float:left;margin-top: -80px">Courses Offered</p>
<p style="margin-top: -170px;margin-left: 160px;font-size: 17px">With Digital HQ you can seamlessly integrate your own content, license content from a third-party or use world-class training content made available on our <br>content marketplace by our training partners. We currently offer more than 560 courses in video or SCORM formats that can me mixed and matched together<br>
 to suit your needs.

Our team is always available to help. To learn more about our offerings, please contact us.
</p>
<br><br>
<p   style="color:orange;font-size:45px;text-align: center">Training Series Currently Available for Purchase on Digital HQ
</p>
<% 
Connection con=null;
PreparedStatement ps=null;
ResultSet rs=null;
con=Crudoperation.createConnection();
String strsql="select * from trainingschedue where scheduledid!='null' limit 10";
 rs=Crudoperation.getData(strsql);
 %>
 <table>
 
  <% 
	try
	{
		while(rs.next())
		{
			
%>

<tr><td style="font-size: 20px;"><ul> <li><a style="color:blue ; text-decoration:underline; ;"href="/ecommerce/jsp/signin.jsp"><%=rs.getString("scheduledid") %></a></li></ul></td></tr>




<%
	} %>
		</table>
<img id="ghu" style="float:left;margin-left: 270px;margin-top:-600px" src="/ecommerce/images/training1.jpg" >
<br>
<p ><a href="/ecommerce/jsp/signin.jsp"style="font-size: 25px;margin-left: 100px;color:blue;text-decoration: underline;">and many more..............</a></p>		
<p style="font-size: 20px;"><br><br><b>At Digital HQ we are constantly exploring new content options and new ways to delight our clients. New courses are being added throughout the year and if you would like us to offer training content for a specific vendor, please contact us and let us know about it. We would be happy to get in touch.
<br><br></b>
If you would like a demonstration of Digital HQ with any of the content we currently offer,
 or even with your own customized training materials, please request a free trial and we would be happy to set it up for you. Dont forget, you can add as many of your own courses on Digital HQ without any 
additional charge. Please visit our pricing page for more information about pricing.</p>
		
	<% }
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
   <div style="width:1230px;height:130px;position:absolute;padding:40px;background-color: #18107E ;margin-top: 0px;margin-left: -40px ">
<p style="font-size: 45px;color:white;">Would you like to tour a DigitalHQTrainning  <a href="/ecommerce/html/tour.html" style="border-style:solid;border-color:white;margin-left: 80px;PADDING:15PX;font-size: 30px">TAKE A TOUR</a></p>

</div>
<div style="height:200px;background-color: #38364F  ;padding:25px;margin-top: 220px;width:1270px;margin-left: -40px"><p style="font-size: 20px"><a href="/ecommerce/html/tour.html"><br>About DigitalHQTraining: The quick and affordable online training management solution for organizations to train, test and track their employees, students, customers or vendors. Digital HQ is the property of Firstventure Corporation Private Limited, an up-and-coming privately-funded education-technology company founded in March 2012, headquartered in Mumbai, India.</a>
<br><br><br><br><b>DigitalHQTraining Online Training Platform © 2016. All Rights Reserved.</b></p></div>
</div>




</body>
</html>