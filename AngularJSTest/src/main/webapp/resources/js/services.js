'use strict';

/* Services */

var bookcatServices = angular.module('bookcatServices', ['ngResource']);

bookcatServices.factory('BookList', ['$resource',
  function($resource){
    return $resource('http://localhost:8080/angularjs/showBooks/', {}, {
      query: {method:'GET', isArray:true}
    });
  }]);

bookcatServices.factory('Book', ['$resource',
                                 function($resource){
	 return $resource('http://localhost:8080/angularjs/getBook/:bookId', {}, {
	      get: {method:'GET', params:{bookId:'book'}}
	    });
	  }]);
