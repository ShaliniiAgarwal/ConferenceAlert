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
<div role="navigation">
  <div class="navbar navbar-inverse">
     <a class="navbar-brand" href="#">ConferenceAlert</a>
   </div>
</div>
<div class="container text-center">
      <c:choose> 
        <c:when test="${mode=='MODE_All' }">
       <table class="table table-striped table-border">
    <thead>
      <tr>
        <th>Topic</th>
        <th>SubTopic</th>
        <th>City</th>
        <th>Info</th>
        <th>Date</th>
        <th>Action</th>
      </tr>
    </thead>
             <tbody>
             <c:forEach var="confer" items="${details}">
             <tr> <td>${confer.topic}</td>
                  <td>${confer.subtopic}</td>
                  <td>${confer.city}</td>
                  <td>${confer.info}</td>
                  <td>${confer.date}</td>
                  <td><a href="/citywiseview/${confer.id}">View</a></td>
		      </tr>
		  </c:forEach>
		</tbody>
          </table>
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
				      <th>Organized By</th>
				      <td>${confer.orgby}</td>
               </tr>
                   <tr>
				      <th>Venue</th>
				      <td>${confer.venue},${confer.city}</td>
               </tr>
                 <tr>
				      <th>AboutEvent</th>
				      <td>${confer.info}</td>
               </tr>
              </table>
       </c:when>
      </c:choose>
          
</div>
   
</body>
</html>
