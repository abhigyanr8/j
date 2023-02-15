<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8858-1">
<title>Login Page</title>
<style >
.error
 {
  color:red;
 }
 label
 {
   width:100px;
   display:inline-block;
   text-align:left;
   
 }
 form
 {
   text-align:center
 }
</style>
</head>
<body>
	
	<!-- TYPE YOUR CODE HERE -->
	<b></b><h1> Welcome To Home Page</h1></b>
<form action="/v">


<b><label>CustomerId</label></b>: <input type ="text" name="Id"> <form:errors class ="error" path ="customer.Id"></form:errors> <br>

<b><label>Name</label></b> : <input type ="text" name="Name"> <form:errors class ="error" path ="customer.Name"></form:errors><br>

<b><label>Phone</label></b> : <input type ="text" name="Phone"> <form:errors class ="error" path ="customer.Phone"></form:errors> <br>

<b><label>Address</label></b>: <input type ="text" name="Address"> <form:errors class ="error" path ="customer.Address"></form:errors> <br>

<b><label>LoginId</label></b> : <input type="text" name="LoginId"/> <form:errors class ="error" path ="customer.LoginId"></form:errors> <br>

<b><label>Password </label></b>: <input type="password" name="Pass"/> <form:errors class ="error" path ="customer.Pass"></form:errors> <br>

<input type="submit" name="submit">
<input type="reset" name="Clear" >

</form>

</body>

</html>