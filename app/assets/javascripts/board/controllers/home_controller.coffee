angular.module('board')
  .controller 'HomeController', ['$scope', 'announcements', ($scope, announcements) ->
    $scope.offset = 0

    $scope.announcements = []

    fetchAnnouncements = () ->
      announcements.getWithOffset($scope.offset).then((response) ->
        if response.status == 200
          if $scope.announcements.length == 0
            $scope.announcements = response.data
          else
            $scope.announcements = $scope.announcements.concat(response.data)
        else
          $scope.erorrs = "Something going wrong"
      )

    $scope.truncatedText = () ->
      if this.item.text != null && this.item.text.length > 30
        this.item.text.substring(0,30) + "..."
      else
        this.item.text

    $scope.loadMore = () ->
      $scope.offset += 10
      fetchAnnouncements()

    fetchAnnouncements()
    
    return null
  ]
