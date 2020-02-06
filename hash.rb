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

puts "================"
# Menambah dan menghapus element dalam hash

new_hash = Hash.new
new_hash[:nama] = 'Zidan'
puts new_hash
new_hash['kelas'] = 'A-1'
puts new_hash
# new_hash[id:] = 123 #error, hasrus symbol atau string
# Delete()
new_hash.delete(:nama) # tipe element penting
puts new_hash
new_hash[:nama] = 'Naufal'
puts new_hash
# new_hash(:nama, 'kelas') error, hanya bisa satu element

puts "=-=-=-=-=-="
# Looping dalam hash

nash = {nama: 'Uni', kelas: 'A!', tipe: 'Normal'}
nash.each{ |element, value|
    puts "#{element} ==> #{value}"
}

nash.each_key{ |key| #looping untuk key/element
    puts "ambil #{key}"
}

puts nash.keys
puts nash.values