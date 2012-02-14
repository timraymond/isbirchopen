describe "locations/index" do
  it "renders _location partial for each location" do
    assign(:locations, [ stub_model(Location), stub_model(Location) ])
    render
    view.should render_template(:partial => "_location", :count => 2)
  end
end
