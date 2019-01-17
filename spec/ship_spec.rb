require 'ship'

describe Ship do

  let(:subject) { Ship.new(3) }

  it "initializes with a length argument" do
    expect(subject.length).to be 3
  end

end
