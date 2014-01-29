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

  context "with normal conditions" do
    subject(:report) { FactoryGirl.build(:report) }

    its(:reason) { should be_nil }

    describe "but specified reason" do
      before { report.reason = "Frozen Ground"; report.save }

      it { should be_valid }
      its(:reason) { should be_nil }
    end
  end

  context "with mixed greens" do
    subject(:report) { FactoryGirl.build(:report, greens: "Mixed", reason: "Saturation") }

    it { should be_valid }

    describe "without specified reason" do
      subject(:report) { FactoryGirl.build(:report, greens: "Mixed", reason: "") }

      it { should_not be_valid }
    end
  end
end
