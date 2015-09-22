angular.module('board')
  .controller('NavigationController', ['$scope', '$location', ($scope, $location) ->
    $scope.isActive = (path) ->
       path == $location.path()
    
    $scope .isNotActive = (path) ->
      path != $location.path()
  ])
