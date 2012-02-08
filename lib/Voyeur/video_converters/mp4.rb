module Voyeur
  class Mp4 < Converter

    def file_extension
      "mp4"
    end

    def convert_options
      #"-b 300k -vcodec libx264"
      "-s 480x320 -vcodec libx264 -s qvga -acodec libfaac -ab 96k -ac 2 -b 200K -threads 4 -flags +loop -cmp +chroma -partitions 0 -me_method epzs -subq 1 -trellis 0 -refs 1 -coder 0 -me_range 16 -g 300 -keyint_min 25 -sc_threshold 40 -i_qfactor 0.71 -maxrate 10M -bufsize 10M -rc_eq 'blurCplx^(1-qComp)' -qcomp 0.6 -qmin 10 -qmax 51 -qdiff 4 -level 30"
    end
  end

end
