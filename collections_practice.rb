def begins_with_r(tools)
  tools.all? { |elem| elem.start_with?("r") }
end

def contain_a(array)
  array.select { |elem| elem.include?('a') }
end

def first_wa(array)
  array.find { |elem| elem.to_s.start_with?('wa') }
end

def remove_non_strings(array)
  array.select { |elem| elem.is_a? String }
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
  keys.each do |elem|
    data.first.map do |k, v|
      if elem.values[0] == k
        final << elem.merge(v)
      end
    end
  end
  final
end


def find_cool(array)
  array.select do |hash|
    hash.any? {|k, v| v == "cool"}
  end
end

def organize_schools(array)
  locations = {}
  array.map { |k, v| locations[v[:location]] = [] }
  locations.each do |key, value|
    array.each do |key2, value2|
      if key == value2[:location]
        value << key2
      end
    end
  end
end
