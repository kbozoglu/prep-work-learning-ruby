class Timer

  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def seconds=(sec)
    @seconds = sec
  end

  def time_string
    hour = @seconds / 3600
    min = (@seconds - hour*3600) / 60
    sec = @seconds - (hour*3600 + min*60)

    "#{padded(hour)}:#{padded(min)}:#{padded(sec)}"
  end

  def padded(num)
    num.to_s.length == 1 ? "0" + num.to_s : num.to_s
  end

end
