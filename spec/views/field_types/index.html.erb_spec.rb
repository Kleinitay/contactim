require 'spec_helper'

describe "field_types/index" do
  before(:each) do
    assign(:field_types, [
      stub_model(FieldType,
        :Name => "Name",
        :defaultVal => "Default Val",
        :validation => "Validation",
        :min_length => 1,
        :max_length => 2,
        :user_generated => false
      ),
      stub_model(FieldType,
        :Name => "Name",
        :defaultVal => "Default Val",
        :validation => "Validation",
        :min_length => 1,
        :max_length => 2,
        :user_generated => false
      )
    ])
  end

  it "renders a list of field_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Default Val".to_s, :count => 2
    assert_select "tr>td", :text => "Validation".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
