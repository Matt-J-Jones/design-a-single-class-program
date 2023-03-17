# File: spec/challenge_spec.rb
require 'challenge'


RSpec.describe TrackLister do
  # adds one track and returns list
  it "add's tracks to track listing and returns list" do
    track_list = TrackLister.new
    track_list.addsong("Title", "Artist")
    result = track_list.printlist
    expect(result).to eq "Artist: Title"
  end
  # adds two tracks and returns in played order
  it "add's tracks to track listing and returns list" do
    track_list = TrackLister.new
    track_list.addsong("Title", "Artist")
    track_list.addsong("Title", "Artist")
    result = track_list.printlist
    expect(result).to eq "Artist: Title\nArtist: Title"
  end
  # adds multiple tracks and returns grouped by artist
  it "add's tracks by different artist's and returns grouped by artist" do
    track_list = TrackLister.new
    track_list.addsong("Title", "Artist")
    track_list.addsong("Title", "Artist 2")
    track_list.addsong("Title 2", "Artist 2")
    track_list.addsong("Title 2", "Artist")
    result = track_list.printlist_sorted
    expect(result).to eq "Artist: Title\nArtist: Title 2\nArtist 2: Title\nArtist 2: Title 2"
  end
end