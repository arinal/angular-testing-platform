'use strict'

angular.module('main').controller 'examSessionCtrl', ($scope, $http, $location, globalData) ->
	$scope.submit = ->
		$http.post "http://localhost:8080/examsession/finish", $scope.entity
		.success ->
			$location.path ''			
			$scope.entity = globalData.get 'examsession'

	$scope.entity = globalData.get 'examsession'