'use strict'

angular.module('main').directive 'alerts', (alerting) ->
        restrict: 'AE'
        templateUrl: 'views/alerts.html'
        link: (scope) -> scope.currentAlerts = alerting.currentAlerts
