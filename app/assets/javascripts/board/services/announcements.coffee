angular.module('board')
  .service('announcements', ['$http', ($http) ->
    getWithOffset: (offset) ->
      $http.get("/api/announcements?offset=#{offset}")

    get: (id) ->
      $http.get("/api/announcements/#{id}")

    create: (form) ->
      $http.post("/api/announcements", {announcement: form})
  ])
