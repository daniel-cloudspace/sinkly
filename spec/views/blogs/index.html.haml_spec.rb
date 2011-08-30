require 'spec_helper'

describe "blogs/index.html.haml" do
  before(:each) do
    assign(:blogs, [
      stub_model(Blog,
        :url => "Url",
        :icon => "Icon",
        :username => "Username",
        :password => "Password",
        :type => "Type"
      ),
      stub_model(Blog,
        :url => "Url",
        :icon => "Icon",
        :username => "Username",
        :password => "Password",
        :type => "Type"
      )
    ])
  end

  it "renders a list of blogs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Icon".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Username".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Password".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Type".to_s, :count => 2
  end
end
