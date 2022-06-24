class StringRepeater
  def initialize(terminal = Kernel)
    @terminal = terminal
  end

  def run
    @terminal.puts "Hello. I will repeat a string many times."
    @terminal.puts "Please enter a string"
    string = @terminal.gets.chomp
    @terminal.puts "Please enter a number of repeats"
    x = @terminal.gets.to_i
    @terminal.puts "Here is your result:"
    @terminal.puts string * x
  end
end

# string_repeater = StringRepeater.new
# string_repeater.run