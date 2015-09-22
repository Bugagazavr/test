angular.module('board')
  .controller('NewController', ['$scope', 'announcements', ($scope, announcements) ->
    $scope.form = {
      text: null,
      announcement_images_attributes: {}
    }

    $scope.images = []

    $scope.submitForm = () ->
      announcements.create($scope.form).then((response) ->
	      #
      )
  ])
