'use strict'

describe 'Service: exam', ->

  # load the service's module
  beforeEach module 'onlineTestClientApp'

  # instantiate service
  exam = {}
  beforeEach inject (_exam_) ->
    exam = _exam_

  it 'should do something', ->
    expect(!!exam).toBe true
