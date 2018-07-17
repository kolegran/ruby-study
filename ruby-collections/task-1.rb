def sum_of_digits(number)
  numArray = number.to_s.split('').map(&:to_i)

  numArray.inject(&:+)
end

puts sum_of_digits(12345)
