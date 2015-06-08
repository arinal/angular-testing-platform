'use strict'

angular.module('main').directive 'login', ->
	restrict: 'E'
	templateUrl: 'views/login.html'
	link: (scope, element, attrs) ->
		scope.$on 'event:unauthorized', ->
			scope.show = true

		scope.$on 'event:authenticated', ->
			scope.show = false

		button = angular.element element.find('button')
		button.bind 'click', ->
			scope.$emit 'event:authenticate', scope.username, scope.password