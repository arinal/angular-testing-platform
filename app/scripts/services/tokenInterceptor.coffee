module = angular.module('main')

module.factory 'tokenInterceptor', ($q, currentUser) ->
        request: (config) ->
                if currentUser.profile.token
                        config.headers.Authorization = "Bearer " + currentUser.profile.token
                $q.when config

module.config ($httpProvider) ->
        $httpProvider.interceptors.push 'tokenInterceptor'
