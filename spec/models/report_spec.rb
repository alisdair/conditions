require 'spec_helper'

describe Report do
  it { should_not be_valid }

  context "with factory" do
    subject { FactoryGirl.build(:report) }
    it { should be_valid }
  end

  context "with invalid weather" do
    subject { FactoryGirl.build(:report, weather: "Chickens") }
    it { should_not be_valid }
  end
end
