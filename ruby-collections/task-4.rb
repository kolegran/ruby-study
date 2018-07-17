h = {nickname: 'IndianGuru', language: 'Marathi', lastname: 'Talim'}

def keys(hash)
  hash.keys
end

def hashKeysArray(hash)
  keysArray = hash.keys
end

def hashValuesArray(hash)
  valuesArray = hash.values
end

puts keys(h).join(', ')
puts hashKeysArray(h).join(', ')
puts hashValuesArray(h).join(', ')
