#Modules



module Turnable
  def turn(new_direction)
    @direction = new_direction
  end
end  

module Accelerator
  def accelerate
    @speed += 10
  end
end  

module Stoppable
  def brake
    @speed = 0
  end
end  

module Initializer 
  def initialize
    @speed = 0
    @direction = 'north'
  end
end

########################################

class Car
  
  def honk_horn
    puts "Beeeeeeep!"
  end
end

######################################

class Bike

  def ring_bell
    puts "Ring ring!"
  end
end

