require "image_processing/vips"

path = ARGV[0]

if path.nil?
  warn "Need a pdf file"
  exit(1)
end

unless File.exist?(path)
  warn "#{path} not found"
  exit(1)
end

file = File.new(path)

ext = 'png'
base = File.basename(path, '.*')

ImageProcessing::Vips
  .source(file)
  .crop(50, 50, 350, 350)
  .convert("png")
  .call(destination: "#{base}.#{ext}")
