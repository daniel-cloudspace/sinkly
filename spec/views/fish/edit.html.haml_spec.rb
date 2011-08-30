require 'spec_helper'

describe "fish/edit.html.haml" do
  before(:each) do
    @fish = assign(:fish, stub_model(Fish,
      :name => "MyString"
    ))
  end

  it "renders the edit fish form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => fish_index_path(@fish), :method => "post" do
      assert_select "input#fish_name", :name => "fish[name]"
    end
  end
end
