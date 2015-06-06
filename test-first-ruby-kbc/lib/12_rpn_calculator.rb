class RPNCalculator
  attr_accessor :value

  def initialize
    @value = nil
    @arr = []
    @numbers = ["0","1", "2", "3", "3", "4", "5", "6", "7", "8", "9"]
  end

  def push(n)
    @arr.push(n)
  end

  def plus
    raise "calculator is empty" if @arr == []
    num2 = @arr.pop
    num1 = @arr.pop
    @value = num1 + num2
    @arr.push(@value)
  end

  def minus
    raise "calculator is empty" if @arr == []
    num2 = @arr.pop
    num1 = @arr.pop
    @value = num1 - num2
    @arr.push(@value)
  end

  def divide
    raise "calculator is empty" if @arr == []
    num2 = @arr.pop
    num1 = @arr.pop
    @value = num1.fdiv(num2)
    @arr.push(@value)
  end

  def times
    raise "calculator is empty" if @arr == []
    num2 = @arr.pop
    num1 = @arr.pop
    @value = num1.to_f * num2.to_f
    @arr.push(@value)
  end

  def tokens(str)
    tok_arr = str.split(" ")
    tok_arr.map! do |n|
      @numbers.include?(n) ? n.to_i : n.to_sym
    end
    return tok_arr
  end

  def evaluate(str)
    str_arr = tokens(str)
    str_arr.each do |n|
      if @numbers.include?(n.to_s)
        @arr << n
      elsif n == :+
        plus
      elsif n == :-
        minus
      elsif n == :/
        divide
      elsif n == :*
        times
      end
    end
    return @value
  end

end
