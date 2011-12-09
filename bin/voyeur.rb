$: << "#{File.dirname(File.absolute_path(__FILE__))}/../lib" 

require "voyeur"

if ARGV.length < 2
  puts "Usage: voyeur.rb <filename> <format>"
  exit 1
end

file_to_convert = ARGV[0]
format = ARGV[1]

puts "Converting #{file_to_convert} to #{format}"

video = Voyeur::Video.new(filename: "#{file_to_convert}")
result = nil
t = Thread.new do 
  result = video.convert( to: format.to_sym )
end

durtion = time = ""
while((status = t.status)) do
    duration = video.convert_duration.to_seconds  if video.convert_duration
    time = video.convert_time.to_seconds if video.convert_time
    puts "#{time} / #{duration}" 
    sleep 1
end
time = video.convert_time.to_seconds 
puts "#{time} / #{duration}" 
t.join
puts result.inspect
