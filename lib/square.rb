class Square

  attr_reader :ship, :attacked

  def initialize
    @ship = false
    @attacked = false
  end

  def place_ship
    fail "Square already occupied" if @ship

    @ship = true
  end

  def attack
    @attacked = true
  end

end
