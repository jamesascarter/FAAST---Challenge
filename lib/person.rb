class Passenger

	def initialize
		@balance = 10
	end

	def balance
		@balance
	end

	def board(coach)
		coach.embark(self)
	end

end	