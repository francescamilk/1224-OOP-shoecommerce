require_relative "shoecommerce/shoe"
### test area ###
# nike_shoe & prada_shoe are two *instances* of the Shoe *Class*

nike_shoe = Shoe.new("nike", "white", "close")

prada_shoe = Shoe.new("prada", "red", "close")

# p nike_shoe
# puts "The Nike is #{nike_shoe.color}"
# puts "The Prada is #{prada_shoe.color}"

nike_shoe.color = "black"
# nike_shoe.color=("black")
nike_shoe.color

p nike_shoe.process_refund

# p nike_shoe
# puts "\nCustomer bought & returned the shoe..."
# nike_shoe.unbox!
# p nike_shoe