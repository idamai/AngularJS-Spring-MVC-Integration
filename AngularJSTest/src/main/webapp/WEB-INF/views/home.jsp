<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html ng-app = "bookcatApp">
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>

	<div class="view-container">
    	<div ng-view class="view-frame"></div>
  	</div>
   

<!-- Minimizing loading delay, script is loaded after other elements of page is loaded -->
  <script src="<c:url value="/resources/js/lib/angular/angular.js/"/>"></script>
  <script src="<c:url value="/resources/js/lib/angular/angular-animate.js"/>"></script>
  <script src="<c:url value="/resources/js/lib/angular/angular-route.js"/>"></script>
  <script src="<c:url value="/resources/js/lib/angular/angular-resource.js"/>"></script>
  <script src="<c:url value="/resources/js/services.js"/>"></script>
  <script src="<c:url value="/resources/js/controller.js"/>"></script>
  <script src="<c:url value="/resources/js/app.js"/>"></script>
<%-- <script src="<c:url value="/resources/js/simple.js"/>"></script> --%>
</body>
</html>
