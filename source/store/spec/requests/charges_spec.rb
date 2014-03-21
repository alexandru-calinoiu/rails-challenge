require 'spec_helper'

describe "Charges index view" do
  describe "should have a list for each of the three groups", :js => true do
    it ", so it should have three lists" do
      visit '/charges/'
      page.should have_css('table', :count => 3)
    end
    it ", so it should have a list with each heading" do
      visit '/charges/'
      page.should have_css('table#failed-charges-table')
      page.should have_css('table#disputed-charges-table')
      page.should have_css('table#successful-charges-table')
    end
  end
  describe "should have the correct number of items in each list", :js => true do
    it ", so, including header rows, it should have six in failed charges, six in disputed charges, and eleven items in the successful list" do
      visit '/charges/'
      page.should have_css('table#failed-charges-table tr', :count => 6)
      page.should have_css('table#disputed-charges-table tr', :count => 6)
      page.should have_css('table#successful-charges-table tr', :count => 11)
    end
  end
end
