require_relative "shoecommerce/shoe"

# Shoe is the *Class*
# new_balance is an *instance* of the Shoe Class

new_balance = Shoe.new("new balance", "green", "close")

#<Shoe:0x000000010a9e94f8 @brand="new balance", @color="green", @unboxed="close">
# @brand, @color, @unboxed are *instance variables* of the new_balance_shoe

new_balance.unbox!

# .unbox! is an *instance method* of the Shoe Class
# that we call on one instance at the time!
# and interacts/manipulates the *state* of the *instance*
