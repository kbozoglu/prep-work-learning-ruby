def reverser(&block)
  arr = block.call.split(" ")
  arr.map!{|word| word.reverse}.join(" ")
end

def adder(n = 1, &block)
  block.call + n
end

def repeater(n = 1, &block)
  n.times do
    block.call
  end
end
