require 'spec_helper'

describe "blogs/new.html.haml" do
  before(:each) do
    assign(:blog, stub_model(Blog,
      :url => "MyString",
      :icon => "MyString",
      :username => "MyString",
      :password => "MyString",
      :type => ""
    ).as_new_record)
  end

  it "renders new blog form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => blogs_path, :method => "post" do
      assert_select "input#blog_url", :name => "blog[url]"
      assert_select "input#blog_icon", :name => "blog[icon]"
      assert_select "input#blog_username", :name => "blog[username]"
      assert_select "input#blog_password", :name => "blog[password]"
      assert_select "input#blog_type", :name => "blog[type]"
    end
  end
end
