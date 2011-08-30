require 'spec_helper'

describe "fish/new.html.haml" do
  before(:each) do
    assign(:fish, stub_model(Fish,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new fish form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => fish_index_path, :method => "post" do
      assert_select "input#fish_name", :name => "fish[name]"
    end
  end
end
