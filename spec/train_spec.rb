require 'train'

describe Train do 

	let(:train) {Train.new}
	let(:coach) {double :coach}

	it "should be initialized with 3 coaches" do
		expect(train.coaches.length).to eq(3)
	end

end