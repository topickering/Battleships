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

end
