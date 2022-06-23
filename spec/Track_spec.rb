require "Track"

RSpec.describe Track do
  it "returns false when keyword not present in title or artist" do
    track = Track.new("foo track", "artist")
    expect( track.matches?("bar") ).to eq false
  end
  
  it "returns true when keyword present in title" do
    track = Track.new("foo track", "artist")
    expect( track.matches?("foo") ).to eq true
  end

  it "returns true when keyword present in artist" do
    track = Track.new("track", "foo artist")
    expect( track.matches?("foo") ).to eq true
  end
end