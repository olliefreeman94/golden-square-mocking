class Track
  def initialize(title, artist)
    @title = title
    @artist = artist
  end

  def matches?(keyword)
    return @title.include?(keyword) || @artist.include?(keyword)
  end
end