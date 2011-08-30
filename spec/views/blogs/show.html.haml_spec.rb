require 'spec_helper'

describe "blogs/show.html.haml" do
  before(:each) do
    @blog = assign(:blog, stub_model(Blog,
      :url => "Url",
      :icon => "Icon",
      :username => "Username",
      :password => "Password",
      :type => "Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Url/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Icon/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Username/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Password/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Type/)
  end
end
