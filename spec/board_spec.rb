require 'board'

describe Board do

  it "initializes with a default size" do
    expect(subject.size).to eq Board::DEFAULT_SIZE
  end
  it "initializes with an empty array of sqaures" do
    expect(subject.squares.empty?).to be true
  end

  describe "#set_up" do
    it "populates the board with squares" do
      subject.set_up
      expect(subject.squares.empty?).to be false
    end
    it "creates the @size amount of rows" do
      subject.set_up
      expect(subject.squares.length).to eq Board::DEFAULT_SIZE
    end
    it "has the same number of columns as rows" do
      subject.set_up
      expect(subject.squares.length).to eq (subject.squares[0].length)
    end
  end

end
