require 'spec_helper'

describe SuperVideo::Video do
  it 'should create a new video object from a filename' do
    video_input_name = 'test_file.mpeg'
    video = SuperVideo::Video.new filename: video_input_name
    video.filename.should == video_input_name
  end

  it "should convert a video to ogv" do
    pending 'Video.new filename: filename.ogv'
  end

  it "should convert a video to mp4" do
    pending 'Video.new filename: filename.mp4'
  end

  it "should convert a video to vp8" do
    pending 'Video.new filename: filename.vp8'
  end

  it "should convert a video all the video formats" do
    pending
  end

  it "should allow the user to specify a path" do
    pending 'convert to: gv, output_base_filename: icecream.ogv'
  end
end
