arr = Array[621, 445, 14, 12, 159, 430, 222, 482, 44, 194, 522, 652, 494, 14, 126, 532, 387, 441, 471, 337, 
            446, 18, 36, 202, 574, 556, 458, 10, 16, 139, 22, 220, 107, 82, 264, 366, 501, 319, 314, 430, 55, 336, 90, 5]

def numberOfElements(array)
  array.count
end

def maxElement(array)
  array.max
end

def minElement(array)
  array.min
end

def sortElements(array)
  array.sort
end

def rmOddNumbers(array)
  array.select { |i| i.even? }
end

def multipleOfThree(array)
  array.select { |i| (i%3).zero? }
end

def uniqNumbers(array)
  array.uniq
end

def divideAllElements(array)
  array.map { |i| i/10.0 }
end

def ascii(array)
  array.select { |i| ((65..90).member?(i) || (97..122).member?(i)) }.map { |i| i.chr }
end

def exchange(array)
  testArr = array.clone

  imin = testArr.index(testArr.min)
  imax = testArr.index(testArr.max)

  testArr[imin], testArr[imax] = testArr[imax], testArr[imin]

  testArr
end

def beforeMin(array)
  imin = array.index(array.min)

  array[0...imin]
end

def threeMin(array)
  (array.sort)[0...3]
end

puts numberOfElements(arr)
puts maxElement(arr)
puts minElement(arr)
puts sortElements(arr).join(', ')
puts rmOddNumbers(arr).join(', ')
puts multipleOfThree(arr).join(', ')
puts uniqNumbers(arr).join(', ')
puts divideAllElements(arr).join(', ')
puts ascii(arr).join(', ')
puts exchange(arr).join(', ')
puts beforeMin(arr).join(', ')
puts threeMin(arr).join(', ')
