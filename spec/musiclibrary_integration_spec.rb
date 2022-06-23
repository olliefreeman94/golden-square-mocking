require "MusicLibrary"
require "Track"

RSpec.describe "musiclibrary integration" do
  it "adds tracks and returns a list of tracks" do
    library = MusicLibrary.new
    track1 = Track.new("foo track", "artist1")
    track2 = Track.new("bar track", "artist2")
    library.add(track1)
    library.add(track2)
    expect( library.all ).to eq [track1, track2]
  end

  it "returns a list of tracks matching keyword" do
    library = MusicLibrary.new
    track1 = Track.new("foo track", "artist1")
    track2 = Track.new("bar track", "artist2")
    track3 = Track.new("baz track", "foo artist")
    library.add(track1)
    library.add(track2)
    library.add(track3)
    expect( library.search("foo") ).to eq [track1, track3]
  end
end