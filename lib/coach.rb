require 'station'

class Coach


	DEFAULT_CAPACITY = 40

	def initialize
		capacity
		passengers
	end	

	def capacity
		@capacity = DEFAULT_CAPACITY
	end	

	def passengers
		@passengers
	end	

	def embark(passenger)
		raise "sorry the coach is full" if full?
		@passengers << passenger
	end

	def leave(passenger, station)
		passengers.delete(passenger)
		station.touch_in(passenger)
	end	

	def passenger_count
		@passengers.count
	end

	def full?
		passenger_count == @capacity
	end	
end
