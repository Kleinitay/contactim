require 'spec_helper'

describe "sheets/show" do
  before(:each) do
    @sheet = assign(:sheet, stub_model(Sheet,
      :user_id => 1,
      :name => "Name",
      :description => "Description",
      :closed => false,
      :visibility => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Name/)
    rendered.should match(/Description/)
    rendered.should match(/false/)
    rendered.should match(/2/)
  end
end
