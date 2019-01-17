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

  describe '#attack' do
    it 'raises an error if the square has already been attacked' do
      subject.attack
      expect { subject.attack }.to raise_error "Square already fired upon"
    end
    it 'is successful if there is a ship on the square' do
      subject.place_ship
      expect(subject.attack).to eq "Bullseye! It's a hit!"
    end
    it 'misses if there is no ship on the square' do
      expect(subject.attack).to eq "Bad luck, it's a miss"
    end
  end

  describe '#hit' do
    it 'is true if square has a ship and has been attacked' do
      subject.place_ship
      subject.attack
      expect(subject.hit).to be true
    end
    it 'is false if square has no ship and has been attacked' do
      subject.attack
      expect(subject.hit).to be false
    end
    it 'is false if square has a ship and has not been attacked' do
      subject.place_ship
      expect(subject.hit).to be false
    end
  end

end
