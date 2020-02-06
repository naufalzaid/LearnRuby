# Array of object variable with hash
#First Hash -> String element
hash = {'satu' => 1, 'dua' => 2, 'tiga' => 'selamat'}
puts hash['tiga']

#Second Hash -> Symbol element
hash = {:satu => 'Katakan', :dua => 'Salah', :tiga => 'Benar'}
puts hash[:satu]

#Third Hash  -> Default element
hash = {satu: 'Hello', dua: 'World', tiga: 'Home'}
puts hash[:satu]


# Empty hash
hash = {nama: 'Zidan', job: 'Junior Programmer', company: 'None'}
puts hash[:salary]

puts hash[:nama]

puts hash.fetch(:salary, 3000)
puts hash = Hash.new('Data belum ada!') # default answer set as empty value
puts hash[:nilai]
hash[:nilai] = 100
hash[:salary] = 120
puts hash

