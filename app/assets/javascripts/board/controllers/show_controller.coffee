angular.module('board')
  .controller('ShowController', ['$scope', '$routeParams', 'announcements', ($scope, $routeParams, announcements) ->
    announcements.get($routeParams.id).then((response) ->
      if response.status == 200
        $scope.announcement = response.data
     )
  ])
