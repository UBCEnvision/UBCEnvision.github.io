require 'yaml'
require 'helpers'
require_all 'news/_posts/*'

describe "News Articles" do
  let(:article_keys) { ["layout", "title", "date", "featured"] }
  let(:articles) {Dir["news/_posts/*.md"]}

  it "should have the right extension" do
    articles.each do |article|
      expect(File.extname(article)).to eq(".md"),
        "Wrong file extension for #{article}, should be .md, but found #{File.extname(article)}"
    end
  end

  it "should have the right layout" do
    articles.each do |article|
      array = front_matter(article)
      expect(array['layout']).to eq("news"),
        "The news article #{article} layout should be 'news', but found #{array['layout']}"
    end
  end

  it "should have the right variables" do
    articles.each do |article|
      array = front_matter(article)
      expect(array.keys).to contain_exactly(*article_keys),
        "The news article #{article} should have these variables #{article_keys}, but found #{array.keys}."
    end
  end

end
