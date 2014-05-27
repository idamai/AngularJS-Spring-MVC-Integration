var bookcatControllers = angular.module('bookcatControllers', []);

bookcatControllers.controller('BookListCtrl', ['$scope', 'Book',
  function($scope, Book) {
    $scope.books = Book.query();
    $scope.orderProp = 'title';
  }]);

//phonecatControllers.controller('PhoneDetailCtrl', ['$scope', '$routeParams', 'Phone',
//  function($scope, $routeParams, Phone) {
//    $scope.phone = Phone.get({phoneId: $routeParams.phoneId}, function(phone) {
//      $scope.mainImageUrl = phone.images[0];
//    });
//
//    $scope.setImage = function(imageUrl) {
//      $scope.mainImageUrl = imageUrl;
//    }
//  }]);
