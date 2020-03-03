require 'rails_helper'

RSpec.describe Post, type: :model do
  describe "validations" do
    it "is valid with valid attributes" do
      post = build(:post)
      expect(post).to be_valid
    end
  
    it "is not valid without a user" do
      post = build(:post, user_id: nil)
      expect(subject).to_not be_valid
    end
  
    it "is not valid without content" do
      post = build(:post, content: nil)
      expect(subject).to_not be_valid
    end
  end
end
