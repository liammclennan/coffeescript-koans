assert = require("assert")

describe 'assignment', ->

  describe 'assigning a value to a variable', ->
    my_variable = null

    before ->
      my_variable = 2

    it 'should bind the value to the variable', ->
      assert.equal my_variable, 2

  describe 'destructuring assignment', ->
    
    describe 'simple array desctructuring', ->
      a = null
      b = null

      before ->
        [a,b] = ['alpha', 'beta']

      it 'should assign multiple variables according to a pattern', ->
        assert.equal a, 'alpha'
        assert.equal b, 'beta'

    describe 'deep destructuring assignment', ->
      structure = null
      extracted_number = null
      extracted_street = null
      extracted_city = null

      before ->
        structure = 
          name: 'John Connor'
          address:
            number: 45
            street: 'Agnes St'
            city: 'London'
        { address: {number: extracted_number} } = structure
        { address: {street: extracted_street, city: extracted_city} } = structure


      it 'should extract nested values', ->
        assert.equal extracted_number, 45
        assert.equal extracted_street, 'Agnes St'
        assert.equal extracted_city, 'London'



