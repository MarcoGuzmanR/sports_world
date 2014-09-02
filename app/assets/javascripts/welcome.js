var app = angular.module('myApp', []);

app.controller('playersController', ['$scope', '$http', function($scope, $http) {
  $scope.init = function() {
    $scope.option = 'teams';
    $scope.display = true;
    var sports = ['Select a sport'];

    $http.get('/players').success(function(data) {
      $scope.players = data.contents;
      $scope.headers = data.headers;

      for (var i = 0; i < data.sports.length; i++) {
        sports.push(data.sports[i]);
      }
    });

    $scope.sports = sports;
    $scope.sport  = sports[0];
  };

  $scope.toggle = function() {
    var $button = angular.element('#toggle_button');
    $button.text( $scope.display ? 'Show Players' : 'Hide Players' );
    $scope.display = !$scope.display;
  };
}]);
