class Plate

  attr_accessor :food

  # def food
  #   return @food
  # end

  # def food=(other)
  #   @food = other
  # end

  def initialize
    @food = []
  end

  def add_food(dish)
    @food << dish
  end

  def eat
    @food.shift
  end

  def on_plate
    "Here are the things on the plate: #{food.join(", ")}"
  end

end


plate = Plate.new
plate.add_food "salad"
plate.add_food "tacos"
plate.add_food "tacos"
plate.add_food "choco-taco"
plate.eat

print plate.on_plate
puts plate.food.inspect
