<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
<a style="position:absolute;margin-left: 540px;margin-top: 210px;font-size: 25px;color:black" href="/ecommerce/jsp/compose.jsp">Compose</a>
<a style="position:absolute;margin-left: 710px;margin-top: 210px;font-size: 25px;color:black" href="/ecommerce/jsp/inbox.jsp">Inbox</a>
<a style="position:absolute;margin-left: 850px;margin-top: 210px;font-size: 25px;color:black" href="/ecommerce/jsp/sentitem.jsp">Sent item</a>

<div style="position: absolute;margin-top: 350px;background-color: menu;width: 450px;height: 400px;padding:20px;margin-left: 500px">
<form method="post" action="/ecommerce/Addacctrainer">
<table style="padding:20px;height:350px">
<tr style="font-size: 18px"><th>User id<sup style="color:red">*</sup></th><td><input style="width:300px" type="text" name="userid" id="userid"></input></td></tr>
<tr style="font-size:18px"><th>Password<sup style="color:red">*</sup></th><td><input style="width:300px" type="password" name="userpass" id="userpass"></input></td></tr>
<tr style="font-size: 18px"><th>Trainer name<sup style="color:red">*</sup></th><td><input style="width:300px" type="text" name="tname" id="tname"></input></td></tr>

<tr style="font-size: 18px"><th>Address<sup style="color:red">*</sup></th><td><input style="width:300px" type="text" name="address" id="address"></input></td></tr>

<tr style="font-size: 18px"><th>Email<sup style="color:red">*</sup></th><td><input style="width:300px" type="email" name="email" id="email"></input></td></tr>
<tr style="font-size: 18px"><th>Phone No.<sup style="color:red">*</sup></th><td><input style="width:300px" type="number" name="number" id="number"></input></td></tr>
<tr><td><br></td></tr>
<tr ><th colspan="2"><input style="width:300px;height:30px;background-color: orange;font-style: oblique;font-size: 20px;font-family: serif;"type="submit" value="Add Account"></th></tr>

</table>
</form>


</div>
</div>
<div style="height:200px;background-color: #38364F  ;color:red;padding:25px;margin-top: 890px;width:1300px;margin-left: 0px;position: absolute;padding: 20px"><p style="font-size: 20px;color:white"><a style="color:white;padding: 20px" href="/ecommerce/html/tour.html"><br>About DigitalHQTraining: The quick and affordable online training management 
solution for organizations to train, test and track their employees, students, customers
 or vendors. Courseplay is the property of Firstventure Corporation Private Limited, an 
 up-and-coming privately-funded education-technology company founded in March 2012, headquartered in Mumbai, India.</a>
<br><br><br><br><b>DigitalHQTraining Online Training Platform � 2016. All Rights Reserved.</b></p></div>
</body>
</html>