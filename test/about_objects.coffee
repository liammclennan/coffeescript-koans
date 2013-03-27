assert = require 'assert'

describe 'objects', ->

  describe 'object literal', ->
    colours = null

    before ->
      colours = 
        red: 'ff0000'
        green: '00ff00'
        blue: '0000ff'

    it 'should create an object with properties', ->
      assert.equal colours.green, '00ff00'
      assert.equal colours['green'], '00ff00'

  describe 'nested objects', ->
    values = null

    before ->
      values = 
        numbers: { one: 1, two: 2 }
        letters:
          a: 'a'
          b: 'b'

    it 'should create a nested object', ->
      assert.equal values.numbers.two, 2
      assert.equal values.letters.a, 'a'

