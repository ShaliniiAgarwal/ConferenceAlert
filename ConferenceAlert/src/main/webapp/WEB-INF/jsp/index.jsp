<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE HTML>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Conference</title>
   <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
 
</head>
<body>
<h1>${msg}</h1>
<div role="navigation">
  <div class="navbar navbar-inverse">
     <a class="navbar-brand" href="#">ConferenceAlert</a>
      <a class="navbar-brand" href="/addevent">Add Event</a>
   </div>
</div>
<div class="container">
<c:choose>
   <c:when test="${mode=='MODE_VIEW' }">
   <div class="row">
  <div class="col-md-6">
    <h1>Conference by Topic</h1>
      <table>
     <c:forEach var="confer" items="${details}">
             <tr> 
		          <td><a href="/topicwise/${confer.topic}">${confer.topic}</a></td>
		      </tr>
		  </c:forEach> 
		   </table>
  </div>
  <div class="col-md-6">
     <h1>Conference By City</h1>
        <table>
     <c:forEach var="confer" items="${uniquecity}">
             <tr>
		          <td><a href="/citywise/${confer.city}">${confer.city}</a></td>
		      </tr>
		  </c:forEach>
		   </table>
  </div>
</div>	
</c:when>
<c:when test="${mode=='MODE_ADD' }">
      
<form action="/SaveEventHome" method="post">
    <table class="table table-bordered">
        <tbody>
         <tr><th>Event Organizer Detail</th></tr>
        <tr><th>Organizer Name</th><td><input type="text" name="orgpername" required="required"></td></tr>
         <tr><th>Name Of Orgnization</th><td><input type="text" name="orgby" required="required" ></td></tr>
        <tr><th>Organizer Email</th><td><input type="text" name="email" required="required" ></td></tr>
         <tr><th>Subject</th><td><input type="text" name="subject" required="required" ></td></tr>
         <tr><th>Password</th><td><input type="text" name="eventpassword"></td></tr>
        <tr><th>Event Name</th><td><input type="text" name="eventname" ></td></tr>
         <tr><th>Event Category</th><td><input type="text" name="topic" required="required"></td></tr>
           <tr><th>Event Topic</th><td><input type="text" name="subtopic" required="required"></td></tr>
            <tr><th>City</th><td><input type="text" name="city" required="required" ></td></tr>
         <tr><th>Website</th><td><input type="text" name="website" ></td></tr>
        <tr><th>ContactPerson</th><td><input type="text" name="contperson" ></td></tr>
         <tr><th>Start Date</th><td><input type="text" name="date"></td></tr>
        <tr><th>Deadline</th><td><input type="text" name="deadline"></td></tr>
        <tr><th>Venue</th><td><input type="text" name="venue" ></td></tr>
           <input type="hidden" name="status" value="inactive">
         <tr><th>Event Detail</th><td><textarea name="info"></textarea></td></tr>
          <tr><td colspan="2"><input type="submit" value="Add" class="btn btn-success"></tr>
        </tbody>
    </table>
</form>
</c:when>
</c:choose>
<!--  -->
</div>
   
</body>
</html>
