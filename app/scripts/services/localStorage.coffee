'use strict'

angular.module('main').factory 'localStorage', ($window) ->

        store = $window.localStorage
        
        add: (key, value) ->
                value = angular.toJson value
                store.setItem key, value
        get: (key) ->
                value = store.getItem key
                if value then angular.fromJson value else value

        remove: (key) ->
                store.removeItem key
