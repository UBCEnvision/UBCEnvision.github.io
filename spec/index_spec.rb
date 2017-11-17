require 'spec_helper'

describe "Testing Homepage" do

  before :each do
    visit "/index.html"
  end

  it "has a title" do
    expect(page).to have_css("h1", text: "UBC Envision")
  endrs

  # it "has a bootcamp" do
  #   expect(page).to have_css("#bootcamp li", count: 4)
  # end

  # it "has common issues" do
  #   expect(page).to have_css("h3", text: "Common Issues")
  # end

  # it "has categories" do
  #   expect(page).to have_css("#categories .category")
  # end

  # it "lets me click on a category title" do
  #   click_link "Setup"
  #   expect(page).to have_css("h6.breadcrumbs")
  # end
end