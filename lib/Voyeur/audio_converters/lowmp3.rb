module Voyeur
  class Lowaac < Converter

    def file_extension
      "mp3"
    end

    def convert_options
      "-ac 1 -ar 32000 -ab 64k"
    end
  end

end