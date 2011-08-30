require 'spec_helper'

describe "fish/show.html.haml" do
  before(:each) do
    @fish = assign(:fish, stub_model(Fish,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
