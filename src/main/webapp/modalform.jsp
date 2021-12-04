<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<%@include file="design.jsp" %>
<body>
<div class="col-md-12 text-center">
<button  type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
  <i class="fa fa-plus" style="color: white; padding:5px" ></i>Add
</button>
</div>


<!-- Modal -->
<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">Enter Details Here</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form class="row g-3" action="SaveData" method="post">

 <div class="col-md-6">
    <label for="inputFname" class="form-label">Fname</label>
    <input required type="text" class="form-control" id="inputFname" name="fname">
  </div>
  <div class="col-md-6">
    <label for="inputLname" class="form-label">Lname</label>
    <input required type="text" class="form-control" id="inputLname" name="lname">
  </div>
  <div class="col-md-6">
    <label for="inputEmail" class="form-label">Email</label>
    <input required type="email" class="form-control" id="inputEmail" name="email">
  </div>
 <div class="col-md-6">
    <label for="inputPhone" class="form-label" >Phone</label>
    <input required type="text" class="form-control"  pattern="[7-9]{1}[0-9]{9}" id="inputPhone" name="phone">
  </div>
 <div class="col-md-4">
    <label for="inputState" class="form-label">Status</label>
    <select id="inputState" class="form-select" name="status">
      <option>Active</option>
      <option>Deactive</option>
    </select>
  </div>

<div class="col-12">
    <div class="form-check">
      <input name="check" required class="form-check-input" type="checkbox" id="gridCheck">
      <label class="form-check-label" for="gridCheck">
        Check me out
      </label>
    </div>
  </div> 
  <div class="col-12">
    <button type="submit" class="btn btn-primary">Save</button>
  </div>
</form>
      </div>
      <div class="modal-footer">
      
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
</body>
</html>