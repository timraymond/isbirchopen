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

  # Test for bugfix - hour collision
  it "should report a location is open if one hour reports it open and the most recently added hour does not" do
    birch = Factory(:location)
    birch.hours << Factory(:hour, :open_hour => 8, :closed_hour => 10, :day => "Monday")
    birch.hours << Factory(:hour, :day => "Tuesday")

    current_time = Time.now.beginning_of_week + 9.hours # 9 AM on Monday
    Timecop.freeze(current_time)
    birch.status.should be_true
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
