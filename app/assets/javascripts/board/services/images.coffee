angular.module('board')
  .service('images', ['$http', ($http) ->
    create: (file) ->
      fd = new FormData
      fd.append('file', file)

      $http.post("/api/images", fd, {
        transformRequest: angular.identity,
        headers: {
          'Content-Type': undefined
	}
      })
  ])
