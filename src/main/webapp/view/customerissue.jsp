<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Issue Details</title>
<style>
table, th, td {
  border: 1px solid black;
}
</style>
</head>
<body>
<h1><b>Customer Issue Details</b></h1>

<table>
  <tr>
    <th>Issue Id</th>
    <th>Issue Report Date</th>
    <th>Customer Id</th>
    <th>Category</th>
    <th>Description</th>
    <th>Status</th>
    <th>CC Rep Id</th>
  </tr>
  <tr>
    <td>${is.getCustIssueId()}</td>
    <td>${is.getIssueReportDate()}</td>
    <td>${is.getCustId()}</td>
    <td>${is.getCategory()}</td>
    <td>${is.getDescription()}</td>
    <td>${is.getIssueStatus()}</td>
    <td>${is.getCcRepId()}</td>
  </tr>

</table>

<br>
<br>
<a href="/">Back to Login Page</a><br>
<a href="/c">Back to Customers Page</a>

</body>
</html>