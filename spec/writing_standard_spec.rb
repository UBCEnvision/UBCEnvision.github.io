require 'spec_helper'

['/', '/team', '/blog', '/news', '/projects', '/team'].each do |test_page|
	describe "Proper word spellings and capitalization for page: #{test_page}" do
		before(:each) do
			visit test_page
		end

		# TODO: refactor so it only checks text and not links
		it "has the right dashes for the 'Chem-E-Car' word" do
			bad_words = ['Chem E Car', 'ChemE Car']
			matching = page.body.match(Regexp.union(bad_words))
			expect(matching).to be_nil,
			"Incorrect spelling for Chem-E-Car found in #{URI.parse(current_url).to_s}: Expected 'Chem-E-Car' but found #{matching}. Please fix spelling."
		end

	end
end