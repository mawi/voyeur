module Voyeur
  class Webm < Converter

    def file_extension
      "webm"
    end

    def convert_options
      "-s 480x320 -vb 200k -vcodec libvpx -acodec libvorbis -ab 96k -f webm -threads 8"
    end
  end
end
