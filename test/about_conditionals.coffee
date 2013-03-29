assert = require 'assert'

describe 'conditionals', ->
	
	describe 'if', ->
		val = 1
		
		before ->
			if true
				val = 99
		
		it 'should change val if the expression is truthy', ->
			assert.equal val, 99
			#assert.equal val, __
	
	describe 'if as an expression', ->
		val = 1
		
		before ->
			val = if false
				99
			else
				-99
		
		it 'should evaluate based on the truthiness of the condition', ->
			assert.equal val, -99
			#assert.equal val, __
		
	describe 'postfix if', ->
		
		describe 'with truthy condition', ->
			val = 1
			
			before ->
				val = 99 if true
			
			it 'should evaluate the assignment', ->
				assert.equal val, 99
			
		describe 'with falsey condition', ->
			val = 1
			
			before ->
				val = 99 if false
				
			it 'should do nothing', ->
				assert.equal val, 1
				
	# unless has the opposite behaviour to `if`. It is a synonym for `if not`.
	describe 'unless', ->
		val = 1
		
		before ->
			unless false
				val = 99
		
		it 'should change val if the expression is falsey', ->
			assert.equal val, 99
			#assert.equal val, __

	describe 'postfix unless', ->
		
		describe 'with truthy condition', ->
			val = 1
			
			before ->
				val = 99 unless true
					
			it 'should do nothing', ->
				assert.equal val, 1
		
		describe 'with falsey condition', ->
			val = 1
			
			before ->
				val = 99 unless false
					
			it 'should evaluate the assignment', ->
				assert.equal val, 99

	describe 'ternary conditional operator', ->
	
		describe 'with truthy condition', ->
			suffix = null
			is_morning = true
			
			before ->
				suffix = if is_morning then 'AM' else 'PM'
				
			it 'should evaluate the true part of the expression', ->
				assert.equal suffix, 'AM'
				#assert.equal suffix, __
			
		describe 'with falsey condition', ->
			suffix = null
			is_morning = false
			
			before ->
				suffix = if is_morning then 'AM' else 'PM'
				
			it 'should evaluate the false part of the expression', ->
				assert.equal suffix, 'PM'
				#assert.equal suffix, __
			
			
			
			
			
			
			
			
			
