require "mini_magick"

describe "Member Photos" do
  let(:photos) {Dir["assets/images/members/*"]}

  it "should be square" do
    photos.each do |photo|
      image = MiniMagick::Image.open(photo)
      height, width = image.dimensions
      expect(height.fdiv(width)).to be_within(0.05).of(1),
        "Image is not square: height/width is ratio more than 5%: #{photo}"
    end
  end

end
