angular.module('board')
  .config(['$routeProvider', '$locationProvider', ($routeProvider, $locationProvider) ->
    $routeProvider
      .when('/', {
        templateUrl: '/assets/templates/index.html',
        controller: 'HomeController'
      })
      .when('/new', {
        templateUrl: '/assets/templates/new.html',
        controller: 'NewController'
      })
      .otherwise({redirectTo: '/' })

      $locationProvider.html5Mode({enabled: true, requireBase: false})
  ])
