require 'spec_helper'

describe "The Envision team page" do

	before(:each) do
		visit '/team'
	end

	it "has the right breadcrumbs" do
		within ('#breadcrumbs') do
			breadcrumbs = all('.breadcrumb-item')
			expect(breadcrumbs.count).to eq(2)
			expect(breadcrumbs[0]).to have_content('Home')
			expect(breadcrumbs[1]).to have_content('Team')
 		end
	end

	it "has 'envision president' as the first profile" do
	  	within ('#team-members') do
	  		within all('.member').first do
	  			expect(find('.member-title')).to have_text('President'),
	  			"Wrong profile order in team page, the Envision President profile should be in the first position."
	  		end
	  	end
	end

	it "has project captains displayed before all other profiles" do
		# keyword filters for profiles we want on top
		keywords = ['President', 'Captain', 'VP', 'Lead']
		# grab all titles and return an array
		member_titles = page.all(:css, '.member-title').map{|el| el.text}
		# search through titles array, return the index of titles with substrings that match keywords defined earlier, president, captain, vp etc.
		indices = member_titles.each_with_index.select{|s,i| (s.downcase.split & keywords).any?}.map{|pair| pair.last}
		
		# METHOD to check for title order correctness
		# If the order is correct, the indices should form an increasing sequence of consecutive integers, starting from 0
		# e.g. [0,1,2,3,4]
		# Therefore, the last element in this index should be indices.size - 1
		expect(indices.last).to eq(indices.size - 1),
		"Wrong profile order in team page: titles with President, VP, Captain and Lead should precede all other profiles."
	end

	it "has advisors displayed after all other profiles" do
		# keyword filters for profiles we want on top
		keywords = ['Advisor', 'President 2017 -2018']
		# grab all titles and return an array
		member_titles = page.all(:css, '.member-title').map{|el| el.text}
		# search through titles array, return the index of titles with substrings that match keywords defined earlier, president, captain, vp etc.
		indices = member_titles.each_with_index.select{|s,i| (s.downcase.split & keywords).any?}.map{|pair| pair.last}
		
		# METHOD to check for title order correctness
		# If the order is correct, the indices should form a decreasing sequence of consecutive integers, starting from the size of the array - 1
		# e.g. [8,9], if we have 10 members and 2 advisors
		# The first element should be member_titles.size - indices.size
		# The last element should be member_titles.size - 1
		expect(indices.first).to eq(member_titles.size - indices.size),
		"Wrong profile order in team page: titles with Advisor should be at the bottom of the page."
		expect(indices.last).to eq(member_titles.size - 1),
		"Wrong profile order in team page: titles with Advisor should be at the bottom of the page."
	end

	it "has exactly three board members" do
	  	within ('#board-members') do
	  		members = all('.member')
	  		expect(members.count).to eq(3)
	  	end
	end

	#it "has member profiles with only UBC or envision email addresses" do
	#	member_emails = page.all(:css, '.member-email').map{|el| el.text}
	#	member_emails.each do |email|
	#		expect(['alumni.ubc.ca', 'ubc.ca', 'ubcenvision.com']).to include(email.split("@").last),
	#		"Wrong email address in team page for #{email}: Only UBC and UBC Envision domains are allowed."
	#	end
	#end	

end