require "mini_magick"
require 'helpers'
require_all 'assets/images/members/*'

describe "Member Photos" do
  let(:photos) {Dir["_site/assets/images/members/*"]}

  it "should be less than 500kb" do
    photos.each do |photo|
      image = image_loader(photo)
      size = image.size
      expect(size).to be <= 500000,
        "Image is too large (>500kb): #{photo}. Compress it using https://xkeshi.github.io/image-compressor/"
    end
  end

end