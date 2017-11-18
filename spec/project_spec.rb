require 'yaml'

describe "Projects" do
  let(:project_keys) { ["layout", "project", "title", "image", "permalink", "headline", "description", "box"] }
  let(:project) {Dir["_projects/*.md"]}

  it "should have the right layout" do
    project.each do |project|
      array = front_matter(project)
      expect(array['layout']).to eq("project"),
        "The project #{project} layout should be 'project', but found #{array['layout']}"
    end
  end

  it "should have the right variables" do
    project.each do |project|
      array = front_matter(project)
      expect(array.keys).to contain_exactly(*project_keys),
        "The project #{project} should have these variables #{project_keys}, but found #{array.keys}."
    end
  end

  def front_matter(file)
    content = File.read(file)
    yaml_delimiter = "---"

    front_matter = content[/#{yaml_delimiter}(.*?)#{yaml_delimiter}/m, 1]
    YAML.load(front_matter)
  end

end
