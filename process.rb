require "image_processing/vips"

file = File.new('sample.pdf')

ImageProcessing::Vips
  .source(file)
  .crop(50, 50, 350, 350)
  .convert("png")
  .call(destination: 'sample.png')
