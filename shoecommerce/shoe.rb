# shoe.rb          singular | lower_snake_case
# class Shoe       singular | UpperCamelCase

class Shoe
    def initialize(brand, color, unboxed)
        # @brand & @color are *instance variables* 
        @brand   = brand
        @color   = color
        @unboxed = unboxed
    end
    
    attr_reader :brand #, :color
    attr_accessor :color
    # attr_writer :color
    
    # def brand
    #     return @brand
    # end
    
    # def color
    #     return @color
    # end
    
    # def color=(new_color)
    #     @color = new_color
    # end
    
    # 'unbox' and 'capitalize_brand!' are *instance methods*
    def unbox!
        process_refund()

        @unboxed = "open"
    end
    
    def capitalize_brand!
        @brand.capitalize!
    end

    private

    def process_refund
        puts "Contacting bank. Processing refund..."
    end
end
