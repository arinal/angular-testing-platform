'use strict'

angular.module('main').controller 'examCtrl', ($scope, $location, globalData, $http) ->
    $scope.start = ->
        examId = $scope.exam.id
        url = 'http://localhost:8080/examsession/start/' + examId
        $http.post(url).success (retrieved) ->
            globalData.set 'examsession', retrieved
            $location.path '/examsession'

    $http.get('http://localhost:8080/exam/1').success (exam) ->
    	$scope.exam = exam
