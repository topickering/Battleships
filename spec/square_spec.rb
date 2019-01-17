require 'square'

describe Square do

  it 'initiates with no ship' do
    expect(subject.ship).to be false
  end

  it 'initiates without being attacked' do
    expect(subject.attacked).to be false
  end

  describe '#place_ship' do
    it 'places a ship on the square' do
      expect(subject.place_ship).to be true
    end
    it 'raises an error if there is already a ship on the square' do
      subject.place_ship
      expect { subject.place_ship }.to raise_error "Square already occupied"
    end
  end

end
