require 'yaml'
require 'helpers'

describe "Members" do
  let(:member_keys) { ["layout", "name", "title", "img", "biography", "linkedin"] }
  let(:members) {Dir["_members/*.md"]}

  it "should have the right layout" do
    members.each do |member|
      array = front_matter(member)
      expect(array['layout']).to eq("member"),
        "The member #{member} layout should be 'member', but found #{array['layout']}"
    end
  end

  it "should have the right variables" do
    members.each do |member|
      array = front_matter(member)
      expect(array.keys).to include(*member_keys),
        "The member #{member} is missing one or more variables in #{member_keys}"
    end
  end

end
