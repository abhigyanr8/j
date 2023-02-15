<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Raise Issue</title>
<style type="text/css">
 label
 {
   width:200px;
   display:inline-block;
   text-align:left;
   
 }
 form
 {
   text-align:center;
 }
</style>
</head>

<body>
<h1>Welcome to Issue Raise Page</h1>


 <form action ="id">
<b><label>IssueId</label></b>:    <input type = "text" name ="custIssueId"><br>
<b><label>IssueReportdate</label></b>: <input type = "date" name ="issueReportDate"><br>
<b><label>CustomerId</label></b>:    <input type = "text" name ="custId"><br>
<b><label>Category </label></b>:   <input type = "text" name ="category"><br>
<b><label>Descrption</label></b>:  
<textarea rows="5" cols="20" name ="description">
Write your description
</textarea><br><br>
<input type="submit" action="send">
</form>

</body>
</html>