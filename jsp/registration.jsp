<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script>
function checkuserid(ui)
{var x;
x=new XMLHttpRequest();


x.onreadystatechange=function()
{
	
	if(x.readyState==4 &&x.status==200)
		{
			
		var data=x.responseText;
     	alert(data);
		}
	
}

x.open("get","/ecommerce/Registration?ci="+ui,"true");
x.send();


}
</script>
<style>
sup{
color:red;}
td{0
padding:8px;}</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-image: url('/ecommerce/images/rebackground.jpg')">
<div style="width:430px;height:520px;position: absolute;margin-top: 70px;background-color: menu;margin-left: 400px;padding:10px;border:medium;border-style: solid;">
<p style="font-size:30px;color:orange;text-align:center "><b><blink>Register here free!</blink></b></p>
<p style="color:red;margin-left: 20px"><sup>*</sup>fields are mandatory to fill</p>
<form method="post" action="/ecommerce/Registration">
<table bordr="2"style="font-size: 17px;padding:13px">
<tr><th>User id<sup >*</sup></th><td><input type="text" name="userid" id="userid" placeholder="Unique User Id" onblur="checkuserid(this.value)"></td></tr>

<tr><th>Password<sup >*</sup></th><td><input type="password" name="password" id="password" placeholder="password"></td></tr>
<tr><th>Company Name<sup >*</sup></th><td><input type="text" placeholder="Your Company Name" name="coname" id="coname" required="required"></td></tr>
<tr><th>Address<sup >*</sup></th><td><input type="text" placeholder="Your address" name="address" id="address" required="required"></td></tr>
<tr><th>Email<sup >*</sup></th><td><input type="email" placeholder="Your Company Name" name="email" id="email" required="required"></td></tr>
<tr><th>Phone No.</th><td><input type="number" placeholder="Contact No" name="phoneno" id="phoneno" required="required"></td></tr>
<tr><th>Date of Reg.<sup >*</sup></th><td><input type="date" placeholder="Your Company Name" name="date" id="date" required="required"></td></tr>
<tr><th>CEO Name</th><td><input type="text" placeholder="Your CEo Name" name="ceoname" id="ceoname" required="required"></td></tr>

<tr><th colspan="2" ><br><button style="width:200px;background-color: orange" value="submit">Register Now!</button></th>

</table>
</form>
</div>


</html>