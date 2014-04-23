class Pizza
  attr_accessor :toppings

  def initialize(toppings=[Topping.new('cheese', vegetarian: true)])
    @toppings = toppings
  end

  def vegetarian?
    @toppings.all? { |x| x.vegetarian == true }
  end

  def add_topping(new_topping)
    @toppings << new_topping
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
