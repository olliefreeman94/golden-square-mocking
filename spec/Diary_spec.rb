require "Diary"

RSpec.describe Diary do
  it "constructs" do
    diary = Diary.new("hello world")
    expect( diary.contents ).to eq "hello world"
  end
end