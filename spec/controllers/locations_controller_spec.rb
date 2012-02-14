require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe LocationsController do
  describe "GET index" do
    it "lists the locations being tracked" do
      get :index
      assigns(:locations).should eq(Location.all)
    end
    it "displays the status of each location"
  end
end
