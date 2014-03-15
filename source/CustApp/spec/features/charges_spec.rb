# spec/features/charges_spec.rb
require '../spec_helper'

feature 'Visitor comes to homepage' do
  scenario 'Visitor should be able to see 3 lists with detailed charges' do
    visit charges_path

    expect(page).to have_css('table', :count => 3)
  end

  scenario '10 Should be successful transactions' do
    visit charges_path

    expect(page).to have_css('table.success tbody tr', :count => 10)
  end

  scenario '5 Should be transactions that failed' do
    visit charges_path

    expect(page).to have_css('table.failed tbody tr', :count => 5)
  end


  scenario '5 Should be disputed' do
    visit charges_path

    expect(page).to have_css('table.disputed tbody tr', :count => 5)
  end

end