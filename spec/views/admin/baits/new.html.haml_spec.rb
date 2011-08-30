require 'spec_helper'

describe "admin/baits/new.html.haml" do
  before(:each) do
    assign(:admin_bait, stub_model(Admin::Bait,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new admin_bait form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => admin_baits_path, :method => "post" do
      assert_select "input#admin_bait_name", :name => "admin_bait[name]"
    end
  end
end
