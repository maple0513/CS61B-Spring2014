require './card'

class CardSet
	attr_accessor :set
	def initialize
		@set = newSet
#		puts @set[1].id
	end

	# This method generates a set of 81 cards.
	def newSet
		shapeType = ["ovals", "squiggles", "diamonds"]
		colorType = ["red", "purple", "green"]
		numberType = ["one", "two", "three"]
		shadingType = ["solid", "striped", "outlined"]
		id = 0;
		cardSet = []

		for i in 0..2
			for j in 0..2
				for k in 0..2
					for l in 0..2
						cardSet << Card.new(i, j, k, l,id)
#						puts cardSet[id-1].color
						id += 1

					end
				end
			end
		end
		cardSet
	end

	# This method determines whether three cards form a set.
	def isValidSet(num1, num2, num3)

#		puts validFeature(num1, num2, num3, 'shape')
#		puts validFeature(num1, num2, num3, 'color')
#		puts validFeature(num1, num2, num3, 'number')
#		puts validFeature(num1, num2, num3, 'shading')

		if validFeature(num1, num2, num3, 'shape') && validFeature(num1, num2, num3, 'color') &&
		    validFeature(num1, num2, num3, 'number') && validFeature(num1, num2, num3, 'shading')	
			true
		else false			
		end
	end


	# This method determines whether a kind of features of 3 cards are the same or totally different.
	def validFeature(num1, num2, num3, feature)
		if feature == 'shape'
			if set[num1].shape == set[num2].shape && set[num2].shape == set[num3].shape ||
		   	   set[num1].shape + set[num2].shape + set[num3].shape == 3
				true
			else false
			end
		elsif feature == 'color'
			if set[num1].color == set[num2].color && set[num2].color == set[num3].color ||
		   	   set[num1].color + set[num2].color + set[num3].color == 3
				true
			else false
			end
		elsif feature == 'number'
			if set[num1].number == set[num2].number && set[num2].number == set[num3].number ||
		   	   set[num1].number + set[num2].number + set[num3].number == 3
				true
			else false
			end
		elsif feature == 'shading'
			if set[num1].shading == set[num2].shading && set[num2].shading == set[num3].shading ||
			   set[num1].shading + set[num2].shading + set[num3].shading == 3
				true
			else false
			end
		end
	end



	
end

