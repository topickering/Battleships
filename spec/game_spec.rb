require 'game'

describe Game do

  let(:board) { double("Board") }

  it "initializes with a board" do
    allow(board).to receive(:set_up) { board }
    test = Game.new(board)
    expect(test.board).to be board
  end

end
