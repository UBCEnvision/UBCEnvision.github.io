require 'yaml'

describe "Blog Articles" do
  let(:article_keys) { ["layout", "title", "date", "author"] }
  let(:articles) {Dir["blog/_posts/*"]}

  it "should have the right extension" do
    articles.each do |article|
      expect(File.extname(article)).to eq(".md"),
        "Wrong file extension for #{article}, should be .md, but found #{File.extname(article)}"
    end
  end
  
  it "should have the right layout" do
    articles.each do |article|
      array = front_matter(article)
      expect(array['layout']).to eq("post"),
        "The article #{article} layout should be 'post', but found #{array['layout']}"
    end
  end

  it "should have an array for author" do
    articles.each do |article|
      array = front_matter(article)
      expect(array['author']).to be_an(Array),
        "The article #{article} should have an array for the 'author' key."
    end
  end

  it "should have the right variables" do
    articles.each do |article|
      array = front_matter(article)
      expect(array.keys).to contain_exactly(*article_keys),
        "The article #{article} should have these variables #{article_keys}, but found #{array.keys}."
    end
  end

  def front_matter(file)
    content = File.read(file)
    yaml_delimiter = "---"

    front_matter = content[/#{yaml_delimiter}(.*?)#{yaml_delimiter}/m, 1]
    YAML.load(front_matter)
  end

end
