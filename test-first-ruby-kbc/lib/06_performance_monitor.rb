def measure(n = 1)
  sum = 0
  n.times do
    s_time = Time.now
    yield
    e_time = Time.now
    sum += e_time - s_time
    #puts Time.now
  end
  return sum / n
end
