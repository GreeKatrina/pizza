require './pizza'

describe Pizza do
  it "exists" do
    expect(Pizza).to be_a(Class)
  end
  describe '.initialize' do
    it 'records all of the toppings' do
      toppings = [
        Topping.new('mushrooms', vegetarian: true),
        Topping.new('pepperoni')
      ]
      pizza = Pizza.new(toppings)

      expect(pizza.toppings).to eq(toppings)
    end
    it 'defaults the toppings to cheese only, if the pizza has no toppings' do
      pizza = Pizza.new

      expect(pizza.toppings.size).to eq(1)
      expect(pizza.toppings.first.name).to eq('cheese')
    end
  end
  describe '.vegetarian?' do
    it 'will return true if all of the toppings on a pizza are vegetarian' do
      meattoppings = [
        Topping.new('mushrooms', vegetarian: true),
        Topping.new('pepperoni')
      ]
      veggietoppings = [
        Topping.new('mushrooms', vegetarian: true),
        Topping.new('peppers', vegetarian: true)
      ]
      meatpizza = Pizza.new(meattoppings)
      veggiepizza = Pizza.new(veggietoppings)
      cheesepizza = Pizza.new

      expect(veggiepizza.vegetarian?).to eq(true)
      expect(meatpizza.vegetarian?).to eq(false)
      expect(cheesepizza.vegetarian?).to eq(true)
    end
  end
  describe '.add_topping' do
    it 'accepts a topping and add it to a toppings array' do
      pizza = Pizza.new
      newtoppings = pizza.add_topping(Topping.new('mushrooms', vegetarian: true))
      expect(newtoppings.count).to eq(2)
    end
  end
end

describe Topping do
  it "exists" do
    expect(Topping).to be_a(Class)
  end
  describe '.initialize' do
      it 'sets the name of the topping' do
        topping = Topping.new('olives')

        expect(topping.name).to eq('olives')
      end
      it 'sets whether or not the topping is vegetarian' do
        topping = Topping.new 'bell peppers', vegetarian: true

        expect(topping.vegetarian).to eq(true)
      end
  end
end
