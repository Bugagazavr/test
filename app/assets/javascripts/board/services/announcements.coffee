angular.module('board')
  .service('announcements', ['$http', ($http) ->
    get: (offset) ->
      $http.get("/api/announcements?offset=#{offset}")

    create: (form) ->
      $http.post("/api/announcements", {announcement: form})
  ])
