require 'rails_helper'


RSpec.describe Location, type: :model do
  subject { described_class.new }

  it "is valid with valid attributes" do
    subject.name = "London"
    expect(subject).to be_valid
  end

  it "is not valid without a name" do
    subject.name = nil
    expect(subject).to_not be_valid
  end
end
