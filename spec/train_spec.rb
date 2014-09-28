require 'train'

describe Train do 

	let(:train) {Train.new}
	let(:coach) {double :coach}

	it "should be able to hold an array of coaches" do
		expect(train.coaches).to eq([])
	end

	it "should have a default capacity of 3" do
		expect(train.capacity).to eq(3)
	end

	it "should be able to add coaches" do
		train.add_coaches(coach)
		expect(train.coach_count).to eq(1)
	end


		
end