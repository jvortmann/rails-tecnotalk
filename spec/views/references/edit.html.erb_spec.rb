require 'spec_helper'

describe "references/edit" do
  before(:each) do
    @reference = assign(:reference, stub_model(Reference,
      :category => "MyString",
      :link => "MyString"
    ))
  end

  it "renders the edit reference form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => references_path(@reference), :method => "post" do
      assert_select "input#reference_category", :name => "reference[category]"
      assert_select "input#reference_link", :name => "reference[link]"
    end
  end
end
