require 'spec_helper'

describe "blogs/edit.html.haml" do
  before(:each) do
    @blog = assign(:blog, stub_model(Blog,
      :url => "MyString",
      :icon => "MyString",
      :username => "MyString",
      :password => "MyString",
      :type => ""
    ))
  end

  it "renders the edit blog form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => blogs_path(@blog), :method => "post" do
      assert_select "input#blog_url", :name => "blog[url]"
      assert_select "input#blog_icon", :name => "blog[icon]"
      assert_select "input#blog_username", :name => "blog[username]"
      assert_select "input#blog_password", :name => "blog[password]"
      assert_select "input#blog_type", :name => "blog[type]"
    end
  end
end
