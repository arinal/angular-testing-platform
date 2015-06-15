'use strict'

module = angular.module('main')
        
module.factory 'loginRedirect', ($location, $q) ->
        lastPath = '/'
        
        responseError: (response) ->
                if response.status == 401
                        lastPath = $location.path()
                        $location.path '/login'
                $q.reject response
        
        redirectPostLogin: ->
                $location.path lastPath
                lastPath = '/'

module.config ($httpProvider) ->
        $httpProvider.interceptors.push 'loginRedirect'
