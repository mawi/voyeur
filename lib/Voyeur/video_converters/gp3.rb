module Voyeur
  #Converter for 3GP
  class Gp3 < Converter

    def file_extension
      "3gp"
    end

    def convert_options
      "-s qcif -r 12 -ac 1 -ar 8000 -b 30 -ab 12"
    end
  end
end
