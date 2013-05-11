require 'spec_helper'

describe Report do
  it { should_not be_valid }

  context "from Mark, with open course and fair weather" do
    subject { Report.new(source: "Mark", open: true, weather: "Fair") }
    it { should be_valid }
  end
end
