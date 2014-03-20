require 'spec_helper'

describe "charges/index" do
  

  it 'Verify that there are three lists', :js => true do
    visit '/'
    page.should have_content('Failed Charges')
    page.should have_content('Disputed Charges')
    page.should have_content('Successful Charges')
  end

  it 'Verify that in the Successful charges list there are 10 line items', :js => true do
    visit '/'
    page.all('.success-charges-list .row').count.should == 10
  end

end
