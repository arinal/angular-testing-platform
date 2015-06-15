'use strict'

angular.module('main').controller 'loginCtrl', ($scope, currentUser, oauth, loginRedirect, alerting) ->
        
        $scope.user = currentUser.profile
        
        $scope.login = (form) ->
                if form.$valid
                        oauth.login $scope.username, $scope.password
                        .then -> loginRedirect.redirectPostLogin()
                        .catch alerting.errorHandler('Could not login')
                        $scope.password = $scope.username = ''
                        form.$setUntouched()
