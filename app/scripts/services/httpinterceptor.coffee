'use strict'

angular.module('main').factory 'httpInterceptor', ($rootScope, $q) ->
	response: (response) ->
		response || $q.when response
	responseError: (rejection) ->
		switch rejection.status
			when 401
				defer = $q.defer()
				$rootScope.$broadcast 'event:unauthorized'
				defer.promise
			else
				$q.reject rejection