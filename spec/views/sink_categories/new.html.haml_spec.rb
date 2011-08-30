require 'spec_helper'

describe "sink_categories/new.html.haml" do
  before(:each) do
    assign(:sink_category, stub_model(SinkCategory,
      :name => "MyString",
      :photo_file_name => "MyString",
      :photo_content_type => "MyString",
      :photo_file_size => 1,
      :user_id => 1
    ).as_new_record)
  end

  it "renders new sink_category form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => sink_categories_path, :method => "post" do
      assert_select "input#sink_category_name", :name => "sink_category[name]"
      assert_select "input#sink_category_photo_file_name", :name => "sink_category[photo_file_name]"
      assert_select "input#sink_category_photo_content_type", :name => "sink_category[photo_content_type]"
      assert_select "input#sink_category_photo_file_size", :name => "sink_category[photo_file_size]"
      assert_select "input#sink_category_user_id", :name => "sink_category[user_id]"
    end
  end
end
