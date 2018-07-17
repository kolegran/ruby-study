def sumOfDigits(number)
  numArray = number.to_s.split('').map(&:to_i)

  numArray.inject(&:+)
end

puts sumOfDigits(12345)
