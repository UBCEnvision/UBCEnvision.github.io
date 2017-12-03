require "mini_magick"

describe "News Photos" do
  let(:photos) {Dir["assets/images/news/*"]}

  it "should be less than 1MB" do
    photos.each do |photo|
      image = MiniMagick::Image.open(photo)
      size = image.size
      expect(size).to be <= 1000000,
        "Image is too large (>1MB): #{photo}. Compress it using https://xkeshi.github.io/image-compressor/"
    end
  end

end