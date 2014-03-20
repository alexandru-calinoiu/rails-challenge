require 'spec_helper'

describe ChargesController do
  it 'Verify that there are three lists on the screen', :js => true do
    Capybara.current_driver = :selenium
    visit '/'
    page.should have_content('Failed Charges')
    page.should have_content('Disputed Charges')
    page.should have_content('Success Charges')
  end

  it 'Verify that in the Successful charges list there are 10 line items', :js => true do
    visit '/'
    page.all('.success-charges-list tbody tr').count.should == 10
  end

end
