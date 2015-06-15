'use strict'

angular.module 'main', [
        'ngRoute'
]
.config ($routeProvider) ->
        $routeProvider.when '/',
                templateUrl: 'views/main.html'
                controller: 'mainCtrl'
        .when '/examsession',
                templateUrl: 'views/examsession.html'
                controller: 'examSessionCtrl'
        .when '/about',
                templateUrl: 'views/about.html'
        .when '/login',
                templateUrl: 'views/login.html'
                controller: 'loginCtrl'
        .otherwise
                redirectTo: '/'
