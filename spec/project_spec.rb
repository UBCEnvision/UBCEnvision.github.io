require 'yaml'
require 'helpers'
require_all '_projects/*.md'

describe "Project .md files" do
  let(:project_keys) { ["layout", "project", "title", "image", "permalink", "headline", "description", "box"] }
  let(:projects) {Dir["/_projects/*.md"]}

  it "should have the right layout" do
    projects.each do |project|
      array = front_matter(project)
      expect(array['layout']).to eq("project"),
        "The project #{project} layout should be 'project', but found #{array['layout']}"
    end
  end

  it "should have the right variables" do
    projects.each do |project|
      array = front_matter(project)
      expect(array.keys).to contain_exactly(*project_keys),
        "The project #{project} should have these variables #{project_keys}, but found #{array.keys}."
    end
  end

end
