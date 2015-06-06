
class Temperature
  attr_reader :in_fahrenheit, :in_celsius

  def initialize(temps = {})
      @in_fahrenheit = temps.has_key?(:c) ? ctof(temps[:c]) : temps[:f]
      @in_celsius = temps.has_key?(:f) ? ftoc(temps[:f]) : temps[:c]
  end

  def ctof(celsius)
    (9.fdiv(5)) * celsius + 32
  end

  def ftoc(fahrenheit)
    (5.0/9.0) * (fahrenheit - 32)
  end

  def self.from_celsius(n)
    Temperature.new(:c => n)
  end

  def self.from_fahrenheit(n)
    Temperature.new(:f => n)
  end

end

class Fahrenheit < Temperature
  def initialize(temp)
    @in_fahrenheit = temp
    @in_celsius = ftoc(temp)
  end
end

class Celsius < Temperature
  def initialize(temp)
    @in_fahrenheit = ctof(temp)
    @in_celsius = temp
  end
end
