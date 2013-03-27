assert = require("assert")

describe 'assert', ->

  describe 'asserting truth', ->
    true_value = {}

    describe 'true value', ->

      before ->
        true_value = true

      it 'should be a successful test', ->
        assert.ok true_value

  describe 'asserting equality', ->

    describe 'comparing things that are equal', ->

      it 'should be equal', ->
        assert.equal 3, 3

    describe 'comparing things that are not equal', ->

      it 'should be not equal', ->
        assert.notEqual 3, 77

    describe 'comparing deep equality', ->

      it 'should be deep equal', ->
        assert.notEqual [1,2], [1,2]

  describe 'asserting an exception was thrown', ->

    it 'should pass', ->
      assert.throws ->
        throw new Error

  describe 'asserting no exception was thrown', ->

    it 'should pass', ->
      assert.doesNotThrow ->
        'this does not throw'
