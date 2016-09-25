class Card
	attr_accessor :shape, :color, :number, :shading, :id, :isValid

	def initialize(shape, color, number, shading, id)
		@shape = shape;
		@color = color;
		@number = number;
		@shading = shading;

		@id = id;
		@isValid = true;
	end


	# This method set a valid card to an invalid card.
	# @param card
	def setInvalid()
		@isValid = false
	end


	# This method returns whethre a card is valid or not.
	def getIsValid()
		@isValid
	end
	
end
