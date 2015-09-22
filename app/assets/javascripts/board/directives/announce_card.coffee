angular.module('board')
  .directive 'announce-card', () ->
    return {
      restrict: 'A',
      templateUrl: '/assets/templates/_announce.html'
    }

