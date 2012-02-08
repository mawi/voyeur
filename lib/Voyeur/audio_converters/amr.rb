module Voyeur
  class Amr < Converter

    def file_extension
      "amr"
    end

    def convert_options
      "-acodec libopencore_amrnb -ar 8000 -ac 1 -ab 32"
    end
  end

end