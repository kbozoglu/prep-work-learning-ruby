class Dictionary

attr_reader :entries, :keywords

def initialize
  @entries = {}
  @keywords = []
end

def add(params)
  if params.class == Hash
    @entries[params.keys[0]] = params.values[0]
    @keywords <<  params.keys[0]
  else
    @entries = {params => nil}
    @keywords << params
  end
  @keywords.sort!

end

def include?(str)
  @keywords.include?(str) ? true : false
end

def find(str)
  founded_hash = {}
  @entries.each do |key, val|
    if key.start_with?(str)
      founded_hash[key] = val
    end
  end
  return founded_hash
end

def printable
  printable_str = ""
  @keywords.each_with_index do |a_key, idx|
    printable_str += "[#{a_key}] " + '"' + "#{@entries[a_key]}" + '"'
    printable_str += "\n" unless idx == @keywords.length - 1
  end

  return printable_str
end

end
