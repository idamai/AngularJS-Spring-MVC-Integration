'use strict';

/* App Module */

var bookcatApp = angular.module('bookcatApp', [
  'ngRoute',
  'bookcatControllers',
  'bookcatServices'
]);

bookcatApp.config(['$routeProvider',
                    function($routeProvider) {
                      $routeProvider.
                        when('/books', {
                          templateUrl: 'partials/book-list',
                          controller: 'BookListCtrl'
                        }).
                        when('/books/:bookId', {
                            templateUrl: 'partials/book-details',
                            controller: 'BookDetailCtrl'
                          }).
                        otherwise({
                          redirectTo: '/books'
                        });
                    }]);