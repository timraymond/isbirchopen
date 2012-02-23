require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Hour do
  describe ".span" do
    it "should return a range of the hours' times" do
      hour = FactoryGirl.create(:hour)
      hour.span.should be_a_kind_of(Range)
    end
  end
end
