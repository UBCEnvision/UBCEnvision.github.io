require 'spec_helper'

feature "Testing Team Page" do

	it "Has team id" do
		visit '/team'
	  	expect(page).to have_team_id
	end

	def have_team_id
	  	have_css("#team")
	end

end