'use strict';

/* Services */

var bookcatServices = angular.module('bookcatServices', ['ngResource']);

bookcatServices.factory('Book', ['$resource',
  function($resource){
    return $resource('http://localhost:8080/angularjs/showBooks/', {}, {
      query: {method:'GET', isArray:true}
    });
  }]);
