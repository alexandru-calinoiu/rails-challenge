require 'spec_helper'

describe 'charges/index.html.erb' do
  
  before do
    render
  end
  it 'displays 3 lists on the screen' do
    page.has_selector?(".status_name", :count => 3)
  end
  
  it 'display 10 successful charges' do
    expected(rendered).to have_selector("tr.successful", :count => 10)
  end
  
  it 'display 5 disputed charges' do
    expected(rendered).to have_selector("tr.disputed", :count => 5)
  end
  
  it 'display 5 failed charges' do
    expected(rendered).to have_selector("tr.failed", :count => 5)
  end
  
end
