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
<%
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
if(session.getAttribute("name")==null)
{
	response.sendRedirect("login");
}
%>
<div role="navigation">
  <div class="navbar navbar-inverse">
     <a class="navbar-brand" href="#">ConferenceAlert</a>
    <a style="color:white;font-size:18px; margin-left: 80%;" href="/logout">Logout</a> 
   </div>
</div>
<div class="container">
<c:choose>
		<c:when test="${mode=='MODE_HOME' }">
  <div class="container text-center" id="taskDiv">
  <span style="font-size:25px;">Welcome ${name}</span> 
     <table class="table table-striped table-border">
    <thead>
      <tr>
        <th>Id</th>
        <th>Topic</th>
        <th>SubTopic</th>
        <th>City</th>
        <th>Date</th>
         <th>Status</th>
        <th rowspan="3">Action</th>
      </tr>
    </thead>
    <tbody>
         <c:forEach var="confer" items="${details}">
             <tr>
		          <td>${confer.id}</td>
		          <td>${confer.topic}</td>
		          <td>${confer.subtopic}</td>  
		          <td>${confer.city}</td>
		          <td>${confer.date}</td>
		           <td>${confer.status}</td>
		          <td><a href="/view/${confer.id}">view</a>
		           <a href="/edit/${confer.id}">update</a>
		          <a href="/delete/${confer.id}">delete</a></td>
		      </tr>
		  </c:forEach>
    </tbody>
  </table>
</div>

          <!--Add data  -->
<form action="/save" method="post">
    <table class="table table-bordered">
        <tbody>
        <tr><th>Topic</th><td><input type="text" name="topic" required="required"></td></tr>
         <tr><th>SubTopic</th><td><input type="text" name="subtopic" required="required" ></td></tr>
        <tr><th>Info</th><td><input type="text" name="info" required="required" ></td></tr>
        <tr><th>City</th><td><input type="text" name="city" required="required"></td></tr>
        <tr><th>Date</th><td><input type="text" name="date" required="required"></td></tr>
         <tr><th>EventSerial</th><td><input type="text" name="eventserial" required="required"></td></tr>
         <tr><th>Website</th><td><input type="text" name="website" required="required" ></td></tr>
        <tr><th>ContactPerson</th><td><input type="text" name="contperson" required="required" ></td></tr>
        <tr><th>Email</th><td><input type="text" name="email" required="required"></td></tr>
        <tr><th>Deadline</th><td><input type="text" name="deadline" required="required"></td></tr>
         <tr><th>OrganisedBy</th><td><input type="text" name="orgby" required="required"></td></tr>
        <tr><th>Venue</th><td><input type="text" name="venue" required="required"></td></tr>
          <tr><th>status</th><td><INPUT TYPE="Checkbox" Name="status" Value ="active">Active
                            <INPUT TYPE="Checkbox" Name= "status" Value ="inactive">InActive</td></tr>
        <tr><td colspan="2"><input type="submit" value="Add" class="btn btn-success"></tr>
        </tbody>
    </table>
</form>
	</c:when>
	<c:when test="${mode=='MODE_VIEW' }">
	     <div class="container text-center" style="font-size:25px"><span>Conference On</span><sapn>${confer.subtopic}(${confer.topic})</sapn></div>
              <table class="table table-striped table-border">
                <tr>
				      <th>Date</th>
				      <td>${confer.date}</td>
               </tr>
                <tr>
				      <th>EventSerial</th>
				      <td>${confer.eventserial}</td>
               </tr>

                <tr>
				      <th>Website</th>
				      <td><a href="${confer.website}">${confer.website}</a></td>
               </tr>
                  <tr>
				      <th>ContactPerson</th>
				      <td>${confer.contperson}</td>
               </tr>
                <tr>
				      <th>Event Enquiries Email Address</th>
				      <td>${confer.email}</td>
               </tr>
                <tr>
				      <th>Deadline For Abstracts/Proposals:</th>
				      <td>${confer.deadline}</td>
               </tr>
                   <tr>
				      <th>Deadline For Abstracts/Proposals:</th>
				      <td>${confer.deadline}</td>
               </tr>
                <tr>
				      <th>Organized By</th>
				      <td>${confer.orgby}</td>
               </tr>
                 <tr>
				      <th>Organizer Name</th>
				      <td>${confer.orgpername}</td>
               </tr>
                <tr>
				      <th>Event Name</th>
				      <td>${confer.eventname}</td>
               </tr>
                   <tr>
				      <th>Venue</th>
				      <td>${confer.venue},${confer.city}</td>
               </tr>
                 <tr>
				      <th>AboutEvent</th>
				      <td>${confer.info}</td>
               </tr>
                <tr>
				      <th>Status</th>
				      <td>${confer.status}</td>
               </tr>
              </table>
 <a href="/dashboard" class="btn btn-success">Back</a>
	</c:when>
	<c:when test="${mode=='MODE_UPDATE' }">
	  <h2>Edit Person</h2>
 <form action="/update" method="post">
    <input type="hidden" name="id" value="${confer.id}">
    <table class="table table-bordered">
        <tbody>
        <tr><th>Topic</th><td><input type="text" name="topic" required="required" value="${confer.topic}"></td></tr>
        <tr><th>SubTopic</th><td><input type="text" name="subtopic" required="required" value="${confer.subtopic}"></td></tr>
        <tr><th>Info</th><td><input type="text" name="info" required="required" value="${confer.info}"></td></tr>
        <tr><th>City</th><td><input type="text" name="city" required="required" value="${confer.city}"></td></tr>
         <tr><th>Date</th><td><input type="text" name="date" required="required" value="${confer.date}"></td></tr>
      <tr><th>EventSerial</th><td><input type="text" name="eventserial" required="required" value="${confer.eventserial}"></td></tr>
        <tr><th>Website</th><td><input type="text" name="website" required="required" value="${confer.website}"></td></tr>
        <tr><th>ContactPerson</th><td><input type="text" name="contperson" required="required" value="${confer.contperson}"></td></tr>
        <tr><th>Event Enquiries Email Address</th><td><input type="text" name="email" required="required" value="${confer.email}"></td></tr>
         <tr><th>Deadline For Abstracts/Proposals:</th><td><input type="text" name="deadline" required="required" value="${confer.deadline}"></td></tr>
      <tr><th>Organized By</th><td><input type="text" name="orgby" required="required" value="${confer.orgby}"></td></tr>
        <tr><th>Venue</th><td><input type="text" name="venue" required="required" value="${confer.venue}"></td></tr>
        <tr><th>Organizer Name</th><td><input type="text" name="orgpername" required="required" value="${confer.orgpername}"></td></tr>
         <tr><th>status</th><td><INPUT TYPE="Checkbox" Name="status" Value ="active">Active</td>
                            <td><INPUT TYPE="Checkbox" Name= "status" Value ="inactive">InActive</td></tr>
         <tr><th>Event Name</th><td><input type="text" name="eventname" required="required" value="${confer.eventname}"></td></tr>   
        <tr><td colspan="2"><input type="submit" value="Edit" class="btn btn-success"></tr>
        </tbody>
    </table>
</form>
<a href="/dashboard" class="btn btn-success">Back</a>
	</c:when>
	</c:choose>
</div>
   
</body>
</html>
