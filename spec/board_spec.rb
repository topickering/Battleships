require 'board'

describe Board do

  it "initializes with an array of arrays of squares" do
    expect(subject.rows.empty?).to be false
  end
  it "creates the @size amount of rows" do
    expect(subject.rows.length).to eq Board::DEFAULT_SIZE
  end
  it "has the same number of columns as rows" do
    expect(subject.rows.length).to eq subject.rows[0].length
  end

  describe "#find_row" do
    it "locates a row in the rows array, based on an inputted letter" do
      expect(subject.find_row('a')).to eq subject.rows[0]
    end
  end

  describe "#find_column" do
    it "finds the 'column' based on an inputted number" do
      expect(subject.find_column(1)).to be 0
    end
  end

  describe "#coordinate_parse" do
    it "takes a coordinate in the form 'letter number' (eg B3) and parses it into row and column" do
      hash = { :column => 3, :row => "B" }
      expect(subject.coordinate_parse('B3')).to eq hash
    end
  end

end
