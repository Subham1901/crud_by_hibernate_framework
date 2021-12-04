<% String message=(String)session.getAttribute("message");

if(message!=null){
	%>
	<div class="container">
	<div class="alert alert-primary alert-dismissible fade show" role="alert">
  <strong>Hello!</strong> <%=message %>
  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>
</div>
	
	<%
}
session.removeAttribute("message");
%>