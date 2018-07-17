array = [ ['Acolyte', 'Talon'], ['phalanx', 'Scorpion'], ['Carnifex', 'Phaeston'], ['belly', 'sun'] ]

def sort_by_first(arr)
  arr.sort_by { |i| i[0].downcase }
end

puts sort_by_first(array).join(', ')
