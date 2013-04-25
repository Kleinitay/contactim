require 'spec_helper'

describe "sheets/edit" do
  before(:each) do
    @sheet = assign(:sheet, stub_model(Sheet,
      :user_id => 1,
      :name => "MyString",
      :description => "MyString",
      :closed => false,
      :visibility => 1
    ))
  end

  it "renders the edit sheet form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => sheets_path(@sheet), :method => "post" do
      assert_select "input#sheet_user_id", :name => "sheet[user_id]"
      assert_select "input#sheet_name", :name => "sheet[name]"
      assert_select "input#sheet_description", :name => "sheet[description]"
      assert_select "input#sheet_closed", :name => "sheet[closed]"
      assert_select "input#sheet_visibility", :name => "sheet[visibility]"
    end
  end
end
