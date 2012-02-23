require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Location do
  it "should have a name" do
    location = Location.create!(:name => "Birch")
    location.name.should eq("Birch")
  end

  it "should not allow empty names" do
    location = Location.new
    location.should be_invalid
    location.errors[:name].should be_present
  end

  describe '.status' do
    it "should return whether or not a location is open" do
      location = FactoryGirl.create(:location)
      location.hours << Factory(:hour)
      t = Time.now.beginning_of_week + 10.hours
      Timecop.freeze(t)
      location.status.should be_true
    end
  end
end
