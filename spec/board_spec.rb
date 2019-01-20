require 'board'

describe Board do

  let(:empty_square) { double("Square", ship: false, hit: false) }

  it "initializes with an array of arrays of squares" do
    expect(subject.rows.empty?).to be false
  end
  it "creates the @size amount of rows" do
    expect(subject.rows.length).to eq Board::DEFAULT_SIZE
  end
  it "has the same number of columns as rows" do
    expect(subject.rows.length).to eq subject.rows[0].length
  end

  describe "#place_ship" do
    it "places a ship on a square in the rows array, having taken coordinate in the form letter number (eg B3)" do
      allow(empty_square).to receive(:place_ship) { True }
      expect(subject.place_ship('B3')).to eq 'Ship placed on B3'
    end
  end

end
