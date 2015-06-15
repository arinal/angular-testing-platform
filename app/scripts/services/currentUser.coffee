angular.module('main').factory 'currentUser', (localStorage) ->
        userkey = 'utoken'

        initialize = ->
                localUser = localStorage.get userkey
                if localUser then localUser else username: '', token: ''
        
        profile = initialize()
        
        setProfile: (username, token) ->
                profile.username = username
                profile.token = token
                localStorage.add userkey, profile

        profile: profile
