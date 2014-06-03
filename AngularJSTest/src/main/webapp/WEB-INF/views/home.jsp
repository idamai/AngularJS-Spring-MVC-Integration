<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html ng-app = "bookcatApp">
<head>
	<title>Home</title>
	<link href="<c:url value="/resources/css/lib/bootstrap/bootstrap.css"/>" rel="stylesheet">
	<link href="<c:url value="/resources/css/lib/bootstrap/bootstrap-theme.css"/>" rel="stylesheet">
</head>
<body>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>
	
	<!-- Static navbar -->
      <div class="navbar navbar-default" role="navigation">
        <div class="container-fluid">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="http://localhost:8080/angularjs/">Project name</a>
          </div>
          <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
              <li class="active"><a href="http://localhost:8080/angularjs/">Link</a></li>
              <li><a href="http://localhost:8080/angularjs/">Link</a></li>
              <li><a href="http://localhost:8080/angularjs/">Link</a></li>
              <li class="dropdown">
                <div ng-controller="DropdownController">
	                <div class="btn-group" dropdown is-open="status.isopen">
				      <button type="button" class="dropdown-toggle" ng-disabled="disabled">
				         Dropdown<span class="caret"></span>
				      </button>
				      <ul class="dropdown-menu" role="menu">
				        <li><a href="#">Action</a></li>
				        <li><a href="#">Another action</a></li>
				        <li><a href="#">Something else here</a></li>
				        <li class="divider"></li>
				        <li><a href="#">Separated link</a></li>
				      </ul>
   					</div>
                </div>
              </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
              <li class="active"><a href="./Navbar Template for Bootstrap_files/Navbar Template for Bootstrap.htm">Default</a></li>
              <li><a href="http://localhost:8080/angularjs/">Static top</a></li>
              <li><a href="http://localhost:8080/angularjs/">Fixed top</a></li>
            </ul>
          </div><!--/.nav-collapse -->
        </div><!--/.container-fluid -->
      </div>

	<div class="view-container">
    	<div ng-view class="view-frame"></div>
  	</div>
   

<!-- Minimizing loading delay, script is loaded after other elements of page is loaded -->
  <script src="<c:url value="/resources/js/lib/angular/angular.js/"/>"></script>
  <script src="<c:url value="/resources/js/lib/angular/angular-animate.js"/>"></script>
  <script src="<c:url value="/resources/js/lib/angular/angular-route.js"/>"></script>
  <script src="<c:url value="/resources/js/lib/angular/angular-resource.js"/>"></script>
  <script src="<c:url value="/resources/js/lib/bootstrap/ui-bootstrap-tpls-0.11.0.js"/>"></script>
  <script src="<c:url value="/resources/js/services.js"/>"></script>
  <script src="<c:url value="/resources/js/controller.js"/>"></script>
  <script src="<c:url value="/resources/js/app.js"/>"></script>
</body>
</html>
