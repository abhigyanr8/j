<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Following Issue Raised</title>
<style>
table, th, td {
  border: 1px solid black;
}
</style>
</head>
<body>
<h1><b>Following Issue Is Raised...</b></h1>

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
    <td>${i.getCustIssueId()}</td>
    <td>${i.getIssueReportDate()}</td>
    <td>${i.getCustId()}</td>
    <td>${i.getCategory()}</td>
    <td>${i.getDescription()}</td>
    <td>${i.getIssueStatus()}</td>
    <td>${i.getCcRepId()}</td>
  </tr>

</table>

<br>
<br>
<a href="/">Back to Login Page</a><br>
<a href="c">Back to Customers Page</a>

</body>
</html>