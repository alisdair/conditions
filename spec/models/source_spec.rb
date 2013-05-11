require 'spec_helper'

describe Source do
  context "with no field values" do
    subject { Source.new }
    it { should_not be_valid }
  end

  context "with factory" do
    subject { FactoryGirl.build(:source) }
    it { should be_valid }
  end

  context "with name" do
    subject { Source.create(name: "Jim Professional") }
    it { should be_valid }
  end

  context "with existing key" do
    let(:existing) { FactoryGirl.create(:source) }

    describe "validates uniqueness of key" do
      subject { FactoryGirl.build(:source, key: existing.key) }
      it { should_not be_valid }
    end

    describe "finds by key" do
      subject { Source.keyed(existing.key) }
      it { should == existing }
    end
  end
end
