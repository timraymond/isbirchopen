require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Hour do
  describe ".span" do
    it "should return a range of the hours' times" do
      hour = Factory(:hour)
      hour.span.should be_a_kind_of(Range)
    end
  end

  it "should not allow negative hours to be created" do
    hour = FactoryGirl.build(:hour, :open_hour => 11, :closed_hour => 9)
    hour.should be_invalid
  end

  it "should not allow instantaneous hours" do
    hour = FactoryGirl.build(:hour, :open_hour => 11, :closed_hour => 11)
    hour.should be_invalid
  end
end
