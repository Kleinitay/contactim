require 'spec_helper'

describe "field_types/show" do
  before(:each) do
    @field_type = assign(:field_type, stub_model(FieldType,
      :Name => "Name",
      :defaultVal => "Default Val",
      :validation => "Validation",
      :min_length => 1,
      :max_length => 2,
      :user_generated => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Default Val/)
    rendered.should match(/Validation/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/false/)
  end
end
