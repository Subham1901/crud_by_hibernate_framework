
<%@page import="com.entity.Details"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.handler.FactoryHandler"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="design.jsp" %>

</head>
<body>
<div class="container">
<table class="table">
  <thead>
    <tr>
      <th scope="col">Id</th>
      <th scope="col">Fname</th>
      <th scope="col">Lname</th>
      <th scope="col">Email</th>
      <th scope="col">Phone</th>
      <th scope="col">Status</th>
      <th scope="col">Delete</th>
      <th scope="col">Edit</th>
    </tr>
  </thead>


<%

Session s=FactoryHandler.getFact().openSession();
Query q=s.createQuery("from Details");
List<Details> l=q.list();

for(Details d:l){
	
	%> 
	<tbody>
	<tr>
      <th scope="row"><%=d.getId() %></th>
      <td><%=d.getFname() %></td>
      <td><%=d.getLname() %></td>
      <td><%=d.getEmail() %></td>
      <td><%=d.getPhone() %></td>
      <td><%=d.getStatus() %></td>
      <td><a href="DeleteData?id=<%=d.getId() %>" class="btn btn-dark"><i style="color: white; padding:5px;" class="fa fa-trash" ></i>Delete</a></td>
      <td><a  href="edit.jsp?id=<%=d.getId() %>" class="btn btn-dark"><i style="color: white;" class="icon-edit"></i> Edit</a></td>
    </tr>
	</tbody>
     
	<%
	
	
}

%>
</table>
</div>

</body>
</html>