require 'spec_helper'

describe "admin/baits/show.html.haml" do
  before(:each) do
    @admin_bait = assign(:admin_bait, stub_model(Admin::Bait,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
