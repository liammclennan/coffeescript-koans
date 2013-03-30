assert = require 'assert'

describe 'comprehensions', ->

  describe 'as a for loop', ->
    result = []

    before ->
      for i in [1,2,3,4]
        result.push i

    it 'should iterate over the array', ->
      assert.deepEqual result, [1,2,3,4]
      # assert.deepEqual result, __

  describe 'with objects', ->
    colours = 
      red: 'ff0000'
      blue: '00ff00'
      green: '0000ff'
    [keys, values] = [[],[]]

    before ->
      for key,value of colours
        keys.push key
        values.push value

    it 'should iterate over the contents of the object', ->
      assert.deepEqual keys, ['red','blue','green']
      assert.deepEqual values, ['ff0000','00ff00','0000ff']

  describe 'with an output function', ->
    result = []

    before ->
      # note that parenthesis are required if the output function is on the same line
      result = (2 * x for x in [1,2,3])

    it 'should collect the result of mapping the output function over the array', ->
      assert.deepEqual result, [2,4,6]
      # assert.deepEqual result, __

  describe 'with a filter', ->
    hated_adverbs = []

    before ->
      hated_adverbs = (word for word in ['slowly', 'loudly', 'thoughtful', 'telegram', 'submarine'] when /.*ly/.test word)

    it 'should select the adverbs', ->
      assert.deepEqual hated_adverbs, ['slowly','loudly']
      # assert.deepEqual hated_adverbs, __
