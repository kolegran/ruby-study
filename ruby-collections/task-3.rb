arr = [621, 445, 14, 12, 159, 430, 222, 482, 44, 194, 522, 652, 494, 14, 126, 532, 387, 441, 471, 337, 
            446, 18, 36, 202, 574, 556, 458, 10, 16, 139, 22, 220, 107, 82, 264, 366, 501, 319, 314, 430, 55, 336, 90, 5]

def number_of_elements(array)
  array.count
end

def max_element(array)
  array.max
end

def min_element(array)
  array.min
end

def sort_elements(array)
  array.sort
end

def rm_odd_numbers(array)
  array.select { |i| i.even? }
end

def multiple_of_three(array)
  array.select { |i| (i%3).zero? }
end

def uniq_numbers(array)
  array.uniq
end

def divide_all_elements(array)
  array.map { |i| i/10.0 }
end

def ascii(array)
  array.select { |i| ((65..90).member?(i) || (97..122).member?(i)) }.map { |i| i.chr }
end

def exchange(array)
  test_arr = array.clone

  i_min = test_arr.index(test_arr.min)
  i_max = test_arr.index(test_arr.max)

  test_arr[i_min], test_arr[i_max] = test_arr[i_max], test_arr[i_min]

  test_arr
end

def range_before_min(array)
  i_min = array.index(array.min)

  array[0...i_min]
end

def three_min_numbers(array)
  (array.sort)[0..2]
end

puts number_of_elements(arr)
puts max_element(arr)
puts min_element(arr)
puts sort_elements(arr).join(', ')
puts rm_odd_numbers(arr).join(', ')
puts multiple_of_three(arr).join(', ')
puts uniq_numbers(arr).join(', ')
puts divide_all_elements(arr).join(', ')
puts ascii(arr).join(', ')
puts exchange(arr).join(', ')
puts range_before_min(arr).join(', ')
puts three_min_numbers(arr).join(', ')
