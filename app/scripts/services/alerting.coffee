angular.module('main').factory 'alerting', ($timeout) ->

        currentAlerts = []
        
        addAlert = (alert) ->
                currentAlerts.push alert
                remove = ->
                        for i in [0..currentAlerts.length]
                                if currentAlerts[i] == alert
                                        currentAlerts.splice i, 1
                                        break
                $timeout remove, 10000
        
        errorHandler: (description) -> this.addDanger description
        addSuccess: (message) -> addAlert type: 'success', message: message
        addInfo: (message) -> addAlert type: 'info', message: message
        addDanger: (message) -> addAlert type: 'danger', message: message
        addWarning: (message) -> addAlert type: 'warning', message: message
        currentAlerts: currentAlerts
        
