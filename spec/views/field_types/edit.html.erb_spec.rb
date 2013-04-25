require 'spec_helper'

describe "field_types/edit" do
  before(:each) do
    @field_type = assign(:field_type, stub_model(FieldType,
      :Name => "MyString",
      :defaultVal => "MyString",
      :validation => "MyString",
      :min_length => 1,
      :max_length => 1,
      :user_generated => false
    ))
  end

  it "renders the edit field_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => field_types_path(@field_type), :method => "post" do
      assert_select "input#field_type_Name", :name => "field_type[Name]"
      assert_select "input#field_type_defaultVal", :name => "field_type[defaultVal]"
      assert_select "input#field_type_validation", :name => "field_type[validation]"
      assert_select "input#field_type_min_length", :name => "field_type[min_length]"
      assert_select "input#field_type_max_length", :name => "field_type[max_length]"
      assert_select "input#field_type_user_generated", :name => "field_type[user_generated]"
    end
  end
end
