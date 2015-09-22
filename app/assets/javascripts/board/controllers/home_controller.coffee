angular.module('board')
  .controller 'HomeController', ['$scope', 'announcements', ($scope, announcements) ->
    offset = 0

    $scope.announcements = []

    fetchAnnouncements = () ->
      announcements.get(offset).then((response) ->
        if response.status == 200
          $scope.announcements.concat(response.data)
        else
          $scope.erorrs = "Something going wrong"
      )

    $scope.loadMore = () ->
      offset += 10
      fetchAnnouncements()

    fetchAnnouncements()
    
    return null
  ]
