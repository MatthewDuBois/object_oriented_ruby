#Modules

module Moveables
  
  def turn(new_direction)
    @direction = new_direction
  end
  
  def accelerate
    @speed += 10
  end  

  def brake
    @speed = 0
  end
end  


########################################

class Car
  include Moveables

  def initialize
    @speed = 0
    @direction = 'north'
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

######################################

class Bike
  include Moveables

  def initialize
    @speed = 0
    @direction = 'north'
  end

  def ring_bell
    puts "Ring ring!"
  end
end

