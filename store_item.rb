# Exercise:
# A. Use the terminal to create a new folder in your actualize folder called object_oriented_ruby.
# B. Create a new file in the folder called store_item.rb and open it in Sublime.
# C. Use hashes with symbols to represent the following scenario:
# C.1 - You are the owner of a store that sells items (you decide what specifically). Each item has various properties such as color, price, etc.
# C.2 - Represent 3 items using hashes. Each hash should have the same keys with different values.
# C.3 - Be sure to use symbols for the keys. Try creating hashes using both types of hash symbol syntaxes. (Ruby syntax {:a => 123} vs. “JavaScript” syntax {a: 123}).
# Bonus: Read more about Ruby’s hash symbol syntax:
# - http://alwayscoding.ca/momentos/2012/06/15/ruby-hash-syntax-hashrocket-vs-json-style/
# - Create a hash in irb where both the keys and values are symbols. Which syntax do you prefer? (edited) 

chef_knives = {style: "gyuto", steel: "white carbon", bevel: "1 sided" }
slicers = {style: "sujihiki", steel: "blue super", bevel: "90/10"}
utility = {:style => "honesuki", :steel => "tool steel", bevel: "50/50"}

class Knives
  attr_reader :style, :steel, :bevel
  attr_writer :steel, :bevel, :style
  
  def initialize(input_style, input_steel, input_bevel)
    @style = input_style
    @steel = input_steel
    @bevel = input_bevel
  end

  def print_info
    puts "#{ @style } #{ @steel } #{ @bevel }"
  end  

end  

knife_1 = Knives.new("gyuto", "white 2", "80/20")
knife_1.print_info
p knife_1
p knife_1.steel
p knife_1.style
p knife_1.bevel



  