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
    fail "Square already fired upon" if @attacked

    @attacked = true
  end

end
