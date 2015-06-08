'use strict'

describe 'Service: sharedData', ->

  # load the service's module
  beforeEach module 'onlineTestClientApp'

  # instantiate service
  sharedData = {}
  beforeEach inject (_sharedData_) ->
    sharedData = _sharedData_

  it 'should do something', ->
    expect(!!sharedData).toBe true
