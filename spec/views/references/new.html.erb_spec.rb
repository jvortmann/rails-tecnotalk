require 'spec_helper'

describe "references/new" do
  before(:each) do
    assign(:reference, stub_model(Reference,
      :category => "MyString",
      :link => "MyString"
    ).as_new_record)
  end

  it "renders new reference form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => references_path, :method => "post" do
      assert_select "input#reference_category", :name => "reference[category]"
      assert_select "input#reference_link", :name => "reference[link]"
    end
  end
end
