require './cardSet.rb'
class Game
	

	cardSet = CardSet.new
	set = cardSet.set
#	puts set[1].id
#	set[2].setInvalid
#	puts set[2].isValid
#	puts set[2].getIsValid

	sampleSet = set.sample(12).each{|card| card.getIsValid}
	puts "id shape color number shading"
	sampleSet.each{|card| print card.id, " ",card.shape, " ", card.color, " ", card.number, " ", card.shading,"\n"}

	# Display the cards in the sampleSet on the screen.
	sampleSet.each{|card| print card.id, " ",card.shape, " ", card.color, " ", card.number, " ", card.shading,"\n"}


	# Let player input the card numbers that form a set.
	puts "Please input the ID of the first card."
	num1 = gets.chomp.to_i
	puts "Please input the ID of the second card."
	num2 = gets.chomp.to_i
	puts "Please input the ID of the third card."
	num3 = gets.chomp.to_i
	
	
	# Determine whether the input numbers are valid before computing 
	# whether they form a valid set.

#	if !inSampleSet(num1, num2, num3)
#		puts "The cards are not in the sample set."
#	end
	

	puts cardSet.isValidSet(num1, num2, num3)


	# unfinished
	if cardSet.isValidSet(num1, num2, num3)

	end	




	# This method detetermine if the cards picked up by player are in sampleSet.
	def inSampleSet(num1, num2, num3)
		ids = []
		for i in 0..11
			ids << sampleSet[i].id
		end
		if ids.include?(num1) && ids.include?(num2) && ids.include?(num3)
		       true
		end
	end	


end
