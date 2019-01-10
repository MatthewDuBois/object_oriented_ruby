# Use inheritance to DRY up the classes. Note - a car is NOT ina type of bicycle, and a bicycle is NOT a type of car!
# To test it, create a bicycle and car instance from your newly modified classes (you can create them at the bottom of your file). First, have them accelerate. Then, make sure a bike can “Ring ring!” and a car “Beeeeeeep!”


class Vehicle
  attr_reader :speed, :direction
  attr_writer :speed, :direction

  def initialize
    @speed = 0
    @direction = 'north'
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end  

class Car < Vehicle
  attr_reader :fuel, :make, :model

  def initialize(options)
    super()
    @fuel = options[:fuel]
    @make = options[:make]
    @model = options[:model]
  end  

  def fuel
    @fuel = "gasoline"
  end  


  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  attr_reader :brakes, :gears, :type

  def initialize (options)
    super()
    @gears = options[:gears]
    @type = options[:type]
    @brakes = options[:brakes]
  end  

  def ring_bell
    puts "Ring ring!"
  end
end

fixie = Bike.new(
                 gears: 18,
                 type: "road",
                 brakes: "disc",
                )
death_machine = Car.new(
                        fuel: 10,
                        make: "Kia",
                        model: "Sorento",
                        )
fixie.ring_bell
death_machine.honk_horn
p fixie
p death_machine