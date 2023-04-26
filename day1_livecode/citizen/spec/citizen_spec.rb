require_relative "../citizen"

describe Citizen do
  
  describe "#can_vote?" do
    it "returns false if the citizen is 16 years old" do
      citizen = Citizen.new("", "", 16)
      expect(citizen.can_vote?).to eq(false)
    end
    
    it "returns true if the citizen is 42 years old" do
      citizen = Citizen.new("", "", 42)
      expect(citizen.can_vote?).to eq(true)
    end
  end
  
  describe "#full_name" do
    it "returns 'Parker Budding' when first and last names are 'parker' 'budding'" do
      citizen = Citizen.new('parker', 'budding', 30)
      actual  = 'Parker Budding'

      expect(citizen.full_name).to eq(actual)
    end
  end
  
end
