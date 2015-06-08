'use strict'

angular.module 'main', [
	'ngAnimate'
	'ngCookies'
	'ngResource'
	'ngRoute'
	'ngSanitize'
	'ngTouch'
	'ngResource'
]
.config ($routeProvider) ->
	$routeProvider.when '/',
		templateUrl: 'views/main.html'
		controller: 'examCtrl'
	.when '/about',
		templateUrl: 'views/about.html'
		controller: 'aboutCtrl'
	.when '/examsession',
		templateUrl: 'views/examsession.html'
		controller: 'examSessionCtrl'
	.otherwise
	redirectTo: '/'
.config ($httpProvider) ->
	$httpProvider.interceptors.push 'httpInterceptor'
.factory 'tokenHandler', ->
	(resource, action) ->
		resource['_' + action] = resource[action]
		resource[action] = (data, success, error) ->
			resource['_' + action] angular.extend({},
					data || {},
					access_token: tokenHandler.get()),
				success, error
		token = {}
		set: (newToken) -> token = newToken
		get: -> token
		wrapActions: (resource, actions) ->
			wrapped = resource
			for i in [0...actions.length]
				wrapResource wrapped, actions[i]
			wrapped
.run ($rootScope, $http, tokenHandler) ->
	$rootScope.$on 'event:authenticate', (ev, username, password) ->
		payload =
			username: username
			password: password
			grant_type: 'password'
			client_id: 'web-onlinetestingplatform'
			client_secret: '1234'
		post =
			method: 'POST'
			url: 'http://localhost:8080/oauth/token'
			data: $.param payload
			headers:
				'Content-Type': 'application/x-www-form-urlencoded'
				'Authorization': 'Basic ' + btoa(payload.client_id + ':' + payload.client_secret)
		$http(post).success (data) ->
			tokenHandler.set data.access_token
			$rootScope.$broadcast 'event:authenticated'
			