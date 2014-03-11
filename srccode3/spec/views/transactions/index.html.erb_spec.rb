require 'spec_helper'

describe "transactions/index" do
  

  it 'Verify that there are three lists', :js => true do
    visit '/'
    page.should have_content('Failed Charges')
    page.should have_content('Disputed Charges')
    page.should have_content('Success Charges')
  end

  it 'Verify that in the Successful charges list there are 10 line items', :js => true do
    visit '/'
    page.all('#transactions3#transactions-successful tr').count.should == 11
  end


end
