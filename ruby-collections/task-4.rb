h = {nickname: 'IndianGuru', language: 'Marathi', lastname: 'Talim'}

def keys(hash)
  hash.keys
end

def hash_keys_array(hash)
  keys_array = hash.keys
end

def hash_values_array(hash)
  values_array = hash.values
end

puts keys(h).join(', ')
puts hash_keys_array(h).join(', ')
puts hash_values_array(h).join(', ')
