# Run with:       learn spec/02_shoe_spec.rb

class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

  BRANDS = []

  def initialize(brand)
    @brand = brand

    BRANDS << brand unless BRANDS.include?(brand)
    # Below does not work because comparing brands array to single brand
    #  if BRANDS != brand
    #   BRANDS << brand
    # end
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

end