require 'spec_helper'

describe "ChargePage" do
	before { visit "/home/charge" }
	it "has 3 lists" do
		expect(page).to have_selector('h1', count:3)
	end

	it "has 10 successful transactions" do
		expect(page).to have_selector('div.success', count:10)
	end

  	it "has 5 failed transactions" do
  		expect(page).to have_selector('div.failed', count:5)
  	end
end
