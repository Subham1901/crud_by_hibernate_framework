<%@page import="com.entity.Details"%>
<%@page import="com.handler.FactoryHandler"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Here</title>
<%@include file="design.jsp" %>
<style>
  body {
    background-image: url("images/imgb.jpg");
   background-size: cover;
  background-repeat: no-repeat;
}
</style>
</head>
<body>
<nav class="navbar navbar-dark bg-dark">
<div class="col-md-12 text-center">
 <a type="button" href="index.jsp" class="btn btn-primary">Home</a>
 </div>
</nav>
<%
	int id=Integer.parseInt(request.getParameter("id"));
	Session s=FactoryHandler.getFact().openSession();
	Details d=s.get(Details.class, id);


%>
<div class="container" style="margin-top: 40px; width: 600px">
<div  class="card text-white bg-secondary mb-3">
  <div class="card-header">
    Edit Here
  </div>
<form action="EditData" class="row g-3" style="padding: 40px;">
<input type="hidden" value="<%=d.getId() %>" name="id" >
  <div class="col-md-6">
    <label for="inputEmail4" class="form-label">Fname</label>
    <input type="text" name="fname"  value="<%=d.getFname() %>" class="form-control" id="inputEmail4">
  </div>
  <div class="col-md-6">
    <label for="inputPassword4" class="form-label">Lname</label>
    <input type="text" name="lname"  value="<%=d.getLname() %>" class="form-control" id="inputPassword4">
  </div>
  <div class="col-6">
    <label for="inputAddress" class="form-label">Email</label>
    <input type="email" name="email"  value="<%=d.getEmail() %>" class="form-control" id="inputAddress" placeholder="1234 Main St">
  </div>
  <div class="col-md-6">
    <label for="inputCity" class="form-label">Phone</label>
    <input type="text" name="phone"  value="<%=d.getPhone() %>" class="form-control" id="inputCity">
  </div>
  <div class="col-md-4">
    <label for="inputState"  class="form-label">Status</label>
    <select id="inputState" name="status" class="form-select">
      <option selected>Activate</option>
      <option>Deactive</option>
    </select>
  </div>
  
  <div class="col-12">
    <div class="form-check">
      <input class="form-check-input" type="checkbox" id="gridCheck">
      <label class="form-check-label" for="gridCheck">
        Check me out
      </label>
    </div>
  </div>
  <div class="col-12">
    <button type="submit" class="btn btn-dark">Save</button>
  </div>
  </div>
</form>
</div>
</body>
</html>