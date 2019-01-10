require "./modules.rb"

module StoreFront
  class Knives
    include Cutable
    attr_reader :style, :steel, :bevel
    attr_writer :steel, :bevel, :style
    
    def initialize(input_options)
      @style = input_options[:style]
      @steel = input_options[:steel]
      @bevel = input_options[:bevel]
    end
  end  
end
