require 'spec_helper'

describe "SheetPages" do
  subject { page }
  describe "has new sheet link" do
    before do
      let (:user) { FactoryGirl.create(:user) }
      sign_in user
      visit user
      click_link "Create new sheet"
    end

    it { should have_selector("title", "New sheet") }

    it "should show basic fields" do
      should have_content("Email")
      should have_content("Phone Number")
      should have_content("Cell Phone Number")
      should have_content("Full Name")
      should have_content("Address")
      should have_content("Job Title")
      should have_content("Company")
      should have_content("Work Phone Number")
      should have_content("Fax Number")
      should have_content("Facebook Profile")
      should have_content("Twitter")
      should have_content("Linkedin Profile")
    end


  end

  describe "create new sheet" do
    it "allows new sheet creation" do
      fill_in "name", with: "email sheet"
      check 'Email'
      check 'Facebook Profile'
      expect { click_button 'submit' }.to change(Sheet, :count).by(1)
    end
  end

  describe "Display new sheet" do

  end

  describe "Fill sheet" do

  end

end
