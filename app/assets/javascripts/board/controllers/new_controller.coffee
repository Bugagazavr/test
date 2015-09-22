angular.module('board')
  .controller('NewController', ['$scope', '$location', 'announcements', ($scope, $location, announcements) ->
    $scope.errors = []
    
    $scope.form = {
      text: null,
      announcement_images_attributes: {}
    }

    $scope.images = []

    $scope.submitForm = () ->
      announcements.create($scope.form).then((response) ->
        if response.status == 200
          $location.path('/')
      )
      .catch((response) ->
        $scope.errors = Object.keys(response.data).map (key) -> "#{key} with errors: #{response.data[key].join(', ')}"
      )
  ])
