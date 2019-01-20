require 'game'

describe Game do

  let(:board) { double("Board") }
  let(:frigate) { double("Ship", length: 2) }
  let(:destroyer) { double("Ship", length: 3) }

  it "initializes with a board" do
    allow(board).to receive(:set_up) { board }
    test = Game.new(board)
    expect(test.board).to be board
  end

  describe "#add_ship" do
    it 'adds a ship to the game' do
      expect(subject.add_ship(frigate)).to eq [frigate]
    end
    it 'throws an error if there are already 2 ships added' do
      subject.add_ship(frigate)
      subject.add_ship(destroyer)
      expect { subject.add_ship(frigate) }.to raise_error 'Navy at capacity'
    end
  end

end
