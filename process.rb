require "image_processing/vips"

file = File.new('sample.pdf')

ImageProcessing::Vips
  .source(file)
  .convert("png")
  .call
