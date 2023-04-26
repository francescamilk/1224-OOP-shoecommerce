require "pry-byebug"

def full_name(first_name, last_name)
    first = first_name.capitalize
    last  = last_name.capitalize

    return "#{first} #{last}"
end

puts full_name("francesca", "milk")
