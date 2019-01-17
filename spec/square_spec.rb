require 'square'

describe Square do

  it 'initiates with no ship' do
    expect(subject.ship).to be false
  end

  it 'initiates without being attacked' do
    expect(subject.attacked).to be false
  end

end
