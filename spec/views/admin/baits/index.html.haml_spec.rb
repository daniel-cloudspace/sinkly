require 'spec_helper'

describe "admin/baits/index.html.haml" do
  before(:each) do
    assign(:admin_baits, [
      stub_model(Admin::Bait,
        :name => "Name"
      ),
      stub_model(Admin::Bait,
        :name => "Name"
      )
    ])
  end

  it "renders a list of admin/baits" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
