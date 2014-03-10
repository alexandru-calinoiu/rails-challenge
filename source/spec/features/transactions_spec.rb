require 'spec_helper'

feature "Charges listing", :js => true do

  # NOTE: PLEASE SEED DATABASE
  # it will save some time for me, so I dont need to create factories etc.

  scenario "there are three lists on the screen for each status of charges" do
    visit '/transactions'
    expect(page).to have_selector "#tableFailed tbody tr", count: 5
    expect(page).to have_selector "#tableDisputed tbody tr", count: 5
    expect(page).to have_selector "#tableSuccessful tbody tr", count: 10
  end

end