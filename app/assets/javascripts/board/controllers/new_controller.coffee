angular.module('board')
  .controller('NewController', ['$scope', ($scope) ->
    $scope.form = {
      text: null,
      images: []
    }

    $scope.images = []
  ])
