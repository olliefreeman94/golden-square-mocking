require "SecretDiary"
require "Diary"

RSpec.describe "diary integration" do
  it "adds diary as locked" do
    diary = Diary.new("hello world")
    secret_diary = SecretDiary.new(diary)
    expect{ secret_diary.read }.to raise_error "Go away!"
  end

  it "unlocks diary, and returns its contents" do
    diary = Diary.new("hello world")
    secret_diary = SecretDiary.new(diary)
    secret_diary.unlock
    expect( secret_diary.read ).to eq "hello world"
  end

  it "locks diary again" do
    diary = Diary.new("hello world")
    secret_diary = SecretDiary.new(diary)
    secret_diary.unlock
    secret_diary.lock
    expect{ secret_diary.read }.to raise_error "Go away!"
  end
end