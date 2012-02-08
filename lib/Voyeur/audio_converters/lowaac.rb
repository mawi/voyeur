module Voyeur
  class Lowaac < Converter

    def file_extension
      "aac"
    end

    def convert_options
      "-acodec libfaac -ac 1 -ar 32000 -ab 64k"
    end
  end

end