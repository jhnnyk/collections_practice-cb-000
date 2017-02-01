def sort_array_asc(array)
  array.sort
end

def sort_array_desc(array)
  array.sort { |a, b| b <=> a }
end

def sort_array_char_count(array)
  array.sort { |a, b| a.length <=> b.length }
end

def swap_elements(array)
  swappee = array.delete_at(2)
  array.insert(1, swappee)
end

def swap_elements_from_to(array, index, destination_index)
  swappee = array.delete_at(index)
  array.insert(destination_index, swappee)
end

def reverse_array(array)
  array.reverse
end

def kesha_maker(array)
  kesha_array = []

  array.each do |word|
    word[2] = "$"
    kesha_array << word
  end

  kesha_array
end

def find_a(array)
  array.select do |word|
    word.start_with?("a")
  end
end

def sum_array(array)
  array.inject { |sum, n| sum + n }
end

def add_s(array)
  array.each_with_index.collect do |element, index|
    if index != 1
      element << "s"
    else
      element
    end
  end
end
