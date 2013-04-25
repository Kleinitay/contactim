require 'spec_helper'

describe "sheets/index" do
  before(:each) do
    assign(:sheets, [
      stub_model(Sheet,
        :user_id => 1,
        :name => "Name",
        :description => "Description",
        :closed => false,
        :visibility => 2
      ),
      stub_model(Sheet,
        :user_id => 1,
        :name => "Name",
        :description => "Description",
        :closed => false,
        :visibility => 2
      )
    ])
  end

  it "renders a list of sheets" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
