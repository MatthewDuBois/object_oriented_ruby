require "./modules.rb"
require "./knives.rb"

module StoreFront
  class Japanese_knives < Knives
    include Cutable
    def initialize(input_options)
      super()
      @region = input_options[:region]
    end  
  end
end