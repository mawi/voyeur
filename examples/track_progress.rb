
$: << "#{File.dirname(File.absolute_path(__FILE__))}/../lib" #'/home/hendrik/hoesit/Voyeur/lib'

require "Voyeur"

outputname = "test.ogv"

File.delete(outputname) if File.exists?(outputname)

video = Voyeur::Video.new(filename: "#{File.dirname(File.absolute_path(__FILE__))}/test.mp4")
t = Thread.new {video.convert( to: :ogv )}

while((status = t.status)) do
    duration = video.convert_duration.to_seconds  if video.convert_duration
    time = video.convert_time.to_seconds if video.convert_time
    puts "#{time} / #{duration}" 
    sleep 1


end

