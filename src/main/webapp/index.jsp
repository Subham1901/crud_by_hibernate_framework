<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <%@include file="design.jsp" %>

    <title>Do-Operation</title>
    <style>
    body {
    background-image: url("images/yes.jpg");
   background-size: cover;
  background-repeat: no-repeat;
}
    </style>
  </head>
  <body >
  <!-- //////////////////NAVBAR/////////////// -->
  
    <nav class="navbar navbar-dark bg-dark">
   <!-- Button trigger modal -->
	<%@include file="modalform.jsp" %>
 </nav>

<div style="margin-top: 10px;">
<p><%@include file="message.jsp" %></p>
<%@include file="alldata.jsp" %>

</div>

  </body>
</html>