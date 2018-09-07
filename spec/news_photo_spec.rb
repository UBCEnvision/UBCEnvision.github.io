require "mini_magick"
require 'helpers'
<<<<<<< HEAD
require_all '/assets/images/news/*'
=======
require_all 'assets/images/news/*'
>>>>>>> rspec_paths

describe "News Photos" do
  let(:photos) {Dir["/assets/images/news/*"]}

  it "should be less than 1MB" do
    photos.each do |photo|
      image = image_loader(photo)
      size = image.size
      expect(size).to be <= 1000000,
        "Image is too large (>1MB): #{photo}. Compress it using https://xkeshi.github.io/image-compressor/"
    end
  end

end