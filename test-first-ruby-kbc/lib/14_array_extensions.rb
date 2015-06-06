class Array

def sum
  sum = 0
  self.each do |n|
    sum += n
  end
  return sum
end

def square
  return self.map do |n|
    n * n
  end
end

def square!
  return self.map! do |n|
    n * n
  end
end

end
