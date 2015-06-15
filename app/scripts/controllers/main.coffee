'use strict'

angular.module('main').controller 'mainCtrl', ($scope, $http, $location, localStorage) ->

        $scope.takeExam = (exam) ->
                localStorage.add 'currentExam', exam
                $location.path '/examsession'
                
        $http.get('http://localhost:8080/exam').success (data) ->
                $scope.exams = data._embedded.examList
