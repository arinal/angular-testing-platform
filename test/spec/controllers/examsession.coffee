'use strict'

describe 'Controller: ExamsessionCtrl', ->

  # load the controller's module
  beforeEach module 'onlineTestClientApp'

  ExamsessionCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    ExamsessionCtrl = $controller 'ExamsessionCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', ->
    expect(scope.awesomeThings.length).toBe 3
