angular.module('board')
  .controller('NavigationController', ['$scope', '$location', ($scope, $location) ->
    $scope.isActive = (path) ->
       path == $location.path()
    
    $scope .isNotActive = (path) ->
      console.log(path, $location.path())
      path != $location.path()
  ])
