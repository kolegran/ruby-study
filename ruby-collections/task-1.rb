def sum_of_digits(number)
  num_array = number.to_s.split('').map(&:to_i)

  num_array.inject(&:+)
end

puts sum_of_digits(12345)
