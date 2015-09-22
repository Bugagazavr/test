angular.module('board')
  .service('announcements', ['$http', ($http) ->
    get: (offset) ->
      $http.get("/api/announcements?offset=#{offset}")
  ])
