class Pizza
  attr_accessor :toppings, :pizza

  def initialize(toppings)
    @toppings = toppings
    @pizza = []
    @pizza << @toppings
  end
end

class Topping
  attr_accessor :name, :vegetarian

  # Instantiate a new topping.
  #
  # name - The String name of the topping.
  # vegetarian - The Boolean indicating whether or not the topping is vegetarian.
  #
  # Returns a new Topping object.
  def initialize(name, vegetarian: false)
    @name = name
    @vegetarian = vegetarian
  end
end
