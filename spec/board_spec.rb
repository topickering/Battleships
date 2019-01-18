require 'board'

describe Board do

  it "initializes with an array of arrays of sqaures" do
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
      expect(subject.find_row('A')).to eq subject.rows[0]
    end
  end

  describe "#find_column" do
    it "finds the 'column' based on an inputted number" do
      expect(subject.find_column(1)).to be 0
    end
  end

end
