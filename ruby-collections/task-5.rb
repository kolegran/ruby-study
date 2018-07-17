array = [ ['Acolyte', 'Talon'], ['phalanx', 'Scorpion'], ['Carnifex', 'Phaeston'], ['belly', 'sun'] ]

def sortByFirst(arr)
  arr.sort_by { |i| i[0].downcase }
end

puts sortByFirst(array).join(', ')
