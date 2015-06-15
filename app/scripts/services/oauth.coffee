angular.module('main').factory 'oauth', ($http, currentUser) ->
        login: (username, password) ->
                payload =
                        username: username
                        password: password
                        grant_type: 'password'
                        client_id: 'web-onlinetestingplatform'
                        client_secret: '1234'
                post =
                        method: 'POST'
                        url: 'http://localhost:8080/oauth/token'
                        data: $.param payload
                        headers:
                                'Content-Type': 'application/x-www-form-urlencoded'
                                'Authorization': 'Basic ' + btoa(payload.client_id + ':' + payload.client_secret)
                $http(post).success (data) ->
                        currentUser.setProfile username,  data.access_token

