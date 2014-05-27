function BookListCtrl($scope, $http) {
    $http.get('http://localhost:8080/angularjs/showBooks').
        success(function(data) {
            $scope.books = data;
        });
}