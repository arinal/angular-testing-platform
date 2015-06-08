'use strict'

angular.module('main').factory 'globalData', ->
        savedData = {}

        get: (key) ->
                savedData[key]
        set: (key, data) ->
                savedData[key] = data
