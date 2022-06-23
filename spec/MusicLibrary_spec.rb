require "MusicLibrary"

RSpec.describe MusicLibrary do
  it "adds objects and returns a list of them" do
    library = MusicLibrary.new
    track1 = double :track
    track2 = double :track
    library.add(track1)
    library.add(track2)
    expect( library.all ).to eq [track1, track2]
  end

  it "returns list of objects matching keyword" do
    library = MusicLibrary.new
    track1 = double(:track, matches?: true)
    track2 = double(:track, matches?: false)
    library.add(track1)
    library.add(track2)
    expect( library.search("") ).to eq [track1]
  end
end