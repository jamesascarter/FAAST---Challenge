require 'station'

describe Station do

	let(:passenger) {double :passenger}
	let(:station) {Station.new}
	let(:train)  {double :train}

	it "A passenger should be able to touch in" do
	 	expect(station.passenger_count).to eq(0)
	 	station.touch_in(passenger)
	 	expect(station.passenger_count).to eq(1)

	 end

	it "A passenger should be able to touch out at destination" do
		station.touch_in(passenger)
		station.touch_out(passenger)
		expect(station.passenger_count).to eq(0)
	end	

	it "A train will be able to stop at the station" do
		station.dock(train)
		expect(station.train_count).to eq(1)

	end

	it "A train will be able to leave the station" do
		station.dock(train)
		station.leave(train)
		expect(station.train_count).to eq(0)
	end
	
end