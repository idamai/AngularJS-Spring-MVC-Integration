var bookcatControllers = angular.module('bookcatControllers', []);

bookcatControllers.controller('BookListCtrl', ['$scope', 'BookList',
  function($scope, BookList) {
    $scope.books = BookList.query();
    $scope.orderProp = 'fullname';
  }]);

bookcatControllers.controller('BookDetailCtrl', ['$scope', '$routeParams', 'Book',
                                                   function($scope, $routeParams, Book) {
                                                     $scope.book = Book.get({bookId: $routeParams.bookId}, function(book) {
                                                     });
                                                   }]);
