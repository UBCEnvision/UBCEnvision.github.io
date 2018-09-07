require 'spec_helper'

describe "the envision team page" do

	before(:each) do
		visit '/team'
	end

	it "has the right team page title" do
		expect(page).to have_title("Team | UBC Envision")
	end

	it "has the right breadcrumbs" do
		within ('#breadcrumbs') do
			breadcrumbs = all('.breadcrumb-item')
			expect(breadcrumbs.count).to eq(2)
			expect(breadcrumbs[0]).to have_content('Home')
			expect(breadcrumbs[1]).to have_content('Team')
 		end
	end

	it "has a team ID as one of the divs" do
	  	expect(page).to have_css("#team")
	end

	it "has 'envision president' as the first profile" do
	  	within ('#team-members') do
	  		within all('.member').first do
	  			expect(find('.member-title')).to have_text('President')
	  		end
	  	end
	end

	it "has exactly three board members" do
	  	within ('#board-members') do
	  		members = all('.member')
	  		expect(members.count).to eq(3)
	  	end
	end

end