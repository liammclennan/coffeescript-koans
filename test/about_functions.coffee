assert = require 'assert'

describe 'functions', ->
  
  describe 'declaring a simple unary function', ->
    double = null

    before ->
      double = (n) -> 2 * n

    it 'should bind a function to a variable', ->
      assert.equal typeof double, 'function'

    describe 'invoking a function', ->
      result = null

      before ->
        result = double 8

      it 'should invoke the function', ->
        assert.equal result, 16

  describe 'a function with two arguments', ->
    [add,result] = [null,null]

    before ->
      add = (first,second) ->
        first + second
      result = add 2, 4

    it 'should invoke the function', ->
      assert.equal result, 6

  describe 'splats', ->
    [add,args,result] = [null,null,null]

    describe 'expanding splat', ->

      before ->
        add = (first,second) -> first + second
        args = [5,8]
        result = add args...

      it 'should expand the function arguments', ->
        assert.equal result, 13

    describe 'collapsing splat', ->

      before ->
        add = (numbers...) ->
          numbers.reduce (previousValue, currentValue) ->
            previousValue + currentValue
        result = add 5,8

      it 'should collapse the function arguments', ->
        assert.equal result, 13

  describe 'default function arguments', ->
    [add,result] = [null,null]

    before ->
      add = (first, second = 0) -> first + second
      result = add 5

    it 'should add 5 and 0', ->
      assert.equal result, 5

