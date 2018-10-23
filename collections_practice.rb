def begins_with_r(tools)
  tools.all? {|word| word.start_with?("r")}
end

def contain_a(array)
  newArray = []
  array.each do |word|
    newArray.push(word) if word.include?("a")
  end
  newArray
end

def first_wa(array)
  array.find {|word| word.to_s.start_with?("wa")}
end

def remove_non_strings(array)
  array.delete_if {|elem| !(elem.is_a? String)}
end

def count_elements(array)
  array.uniq.each do |word|
    count = 0 
    array.each do |word2|
      if word2 == word 
        count += 1 
      end
    end
    word[:count] = count
  end
end

def merge_data(keys, data)
  final = []
  keys.each {|i| data.first.map {|key,value| if i.values[0] == key then final << i.merge(value) end}}
  final
end


def find_cool(array)
  array.select {|i| i.any? {|key,value| value == "cool"}}
end

def organize_schools(array)
  locations = {}
  array.collect {|key, value| locations[value[:location]] = []}
  locations.each {|key, value| array.each {|key2, value2| if key == value2[:location] then value << key2 end }}
end
