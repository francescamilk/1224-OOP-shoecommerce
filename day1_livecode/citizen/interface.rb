require_relative "citizen"

parker = Citizen.new('parker', 'budding', 30)

adult = parker.can_vote?

if adult
    puts "You can drink"
else
    puts "You can't drink"
end
