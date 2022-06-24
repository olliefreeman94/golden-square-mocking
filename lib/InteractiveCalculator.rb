class InteractiveCalculator
  def initialize(terminal = Kernel)
    @terminal = terminal
  end

  def run
    @terminal.puts "Hello. I will subtract two numbers."
    @terminal.puts "Please enter a number"
    x = @terminal.gets.to_i
    @terminal.puts "Please enter another number"
    y = @terminal.gets.to_i
    @terminal.puts "Here is your result:"
    @terminal.puts "#{x} - #{y} = #{x - y}"
  end
end

# interactive_calculator = InteractiveCalculator.new
# interactive_calculator.run