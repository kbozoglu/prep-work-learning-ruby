def add(n1, n2)
  n1 + n2
end

def subtract(n1, n2)
  n1 - n2
end

def sum(arr)
  total = 0
  arr.each do |n|
    total += n
  end
  total
end

def multiply(*nums)
  total = 1
  nums.each do |n|
    total *= n
  end
  total
end

def power(n1, n2)
  total = 1
  n2.times do
    total *= n1
  end
  total
end

def factorial(n)
  return 1 if n == 0
  total = 1
  (1..n).each do |num|
    total *= num
  end
  total
end
