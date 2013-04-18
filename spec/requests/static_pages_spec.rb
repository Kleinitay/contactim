require 'spec_helper'
require 'utilities'

describe "StaticPages" do
  subject { page }
  describe "home" do
    before { visit root_path }
    it { should have_selector('title', text: full_title("")) }
  end

  describe "about" do
    before { visit about_path }
    it { should have_selector('title', text: full_title("About Us")) }
  end

  describe "help" do
    before { visit help_path }
    it { should have_selector('title', text: full_title("Help")) }
  end
end
