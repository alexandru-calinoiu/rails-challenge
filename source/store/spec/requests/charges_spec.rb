require 'spec_helper'

describe "Charges index view" do
  describe "should have a list for each type", :js => true do
    it "should have three lists" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/charges/'
      page.should have_css('table', :count => 3)
    end
  end
end
