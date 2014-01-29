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

  context "closed due to poor weather" do
    subject(:report) { FactoryGirl.build(:report, status: "Closed", weather: "Poor", greens: "Summer", reason: "Saturation") }

    it { should be_valid }

    describe "without specified reason" do
      subject(:report) { FactoryGirl.build(:report, greens: "Mixed", reason: "") }

      it { should_not be_valid }
    end
  end

  describe "#description" do
    context "open, good weather, summer greens" do
      subject(:report) { FactoryGirl.build(:report, status: "Open", weather: "Good", greens: "Summer") }

      its(:description) { should eq "The course is open. Weather is good. Summer greens." }
    end

    context "closed, poor weather" do
      subject(:report) { FactoryGirl.build(:report, status: "Closed", weather: "Poor") }

      its(:description) { should eq "The course is closed. Weather is poor." }
    end

    context "closed, good weather" do
      subject(:report) { FactoryGirl.build(:report, status: "Closed", weather: "Good") }

      its(:description) { should eq "The course is closed." }
    end

    context "closed, fair weather" do
      subject(:report) { FactoryGirl.build(:report, status: "Closed", weather: "Fair") }

      its(:description) { should eq "The course is closed." }
    end

    context "open, fair weather, mixed greens due to saturation" do
      subject(:report) { FactoryGirl.build(:report, status: "Open", weather: "Fair", greens: "Mixed", reason: "Saturation") }

      its(:description) { should eq "The course is open. Weather is fair. Summer greens/some temporary greens (due to saturation)." }
    end

    context "open, fair weather, winter greens due to snow" do
      subject(:report) { FactoryGirl.build(:report, status: "Open", weather: "Fair", greens: "Winter", reason: "Snow") }

      its(:description) { should eq "The course is open. Weather is fair. Winter greens (due to snow)." }
    end
  end
end
