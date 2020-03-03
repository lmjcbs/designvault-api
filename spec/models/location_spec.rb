require 'rails_helper'


RSpec.describe Location, type: :model do
  describe "validations" do
    it "is valid with valid attributes" do
      location = build(:location)
      expect(location).to be_valid
    end
  
    it "is not valid without a name" do
      location = build(:location, name: nil)
      expect(location).to_not be_valid
    end
  end
end
