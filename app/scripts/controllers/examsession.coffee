'use strict'

angular.module('main').controller 'examSessionCtrl', ($scope, $http, $location, localStorage, alerting) ->        

        $scope.exam = localStorage.get 'currentExam'
        
        $scope.submit = ->
                $http.post "http://localhost:8080/examsession/finish", $scope.entity
                .then ->
                        $http.get "http://localhost:8080/examsession/#{$scope.entity.id}"
                        .success (data) ->
                                if data.status == 'Passed'
                                        alerting.addSuccess "Congratulations! You've passed this test. Your final score is #{data.finalScore}"
                                else
                                        alerting.addDanger "Sorry, but you didn't make the cut. Your final score is #{data.finalScore}"
                                $location.path ''

        url = "http://localhost:8080/examsession/start/#{$scope.exam.id}"
        $http.post(url).success (data) -> $scope.entity = data
