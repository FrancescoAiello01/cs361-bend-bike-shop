# Bike

class Bike

  STANDARD_WEIGHT = 200 # lbs

  attr_accessor :id, :color, :price, :weight, :rented

  def initialize(id, color, price, weight = STANDARD_WEIGHT)
    @id = id
    @color = color
    @price = price
    @weight = weight
    @rented = Rented.new
    @cargo = Cargo.new
  end

  def add_cargo(item)
    @cargo.add_cargo(item)
  end

  def pannier_remaining_capacity
    @cargo.pannier_remaining_capacity
  end

  def rent!
    @rented.rent!
  end

end


# Cargo
class Cargo

  MAX_CARGO_ITEMS = 10

  attr_accessor :cargo_contents

  def initialize()
    @cargo_contents = []
  end

  def add_cargo(item)
    self.cargo_contents << item
  end

  def remove_cargo(item)
    self.cargo_contents.remove(item)
  end

  def pannier_capacity
    MAX_CARGO_ITEMS
  end

  def pannier_remaining_capacity
    MAX_CARGO_ITEMS - self.cargo_contents.size
  end

end


# Rented
class Rented

  attr_accessor :rented

  def initialize(rented = false)
    @rented = rented
  end

  def rent!
    self.rented = true
  end

end