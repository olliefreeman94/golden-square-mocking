require "StringRepeater"

RSpec.describe StringRepeater do
  it "repeats a given string the requested number of times" do
    terminal = double :terminal
    expect(terminal).to receive(:puts).with("Hello. I will repeat a string many times.").ordered
    expect(terminal).to receive(:puts).with("Please enter a string").ordered
    expect(terminal).to receive(:gets).and_return("HELLO").ordered
    expect(terminal).to receive(:puts).with("Please enter a number of repeats").ordered
    expect(terminal).to receive(:gets).and_return("3").ordered
    expect(terminal).to receive(:puts).with("Here is your result:").ordered
    expect(terminal).to receive(:puts).with("HELLOHELLOHELLO").ordered

    string_repeater = StringRepeater.new(terminal)
    string_repeater.run
  end
end