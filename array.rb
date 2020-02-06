# Array

# Default Array
array = [1,2,3,4,5]
puts array

# Mix Array
mix_array = ['Naufal', 17, 'Zaidan', :ghifari];
puts mix_array

# Nullable Array
null_array = []
puts null_array

# Panggil item array sesuai kordinat
array2 = ['A','B','C','D']
array2[1] = 'G'
puts array2
puts '============================================'

# Delete Method di array
arr = ['A','B','A','A','C','D']
arr.delete('A') #delete all 'A'
puts arr
puts '=-=-=-=-=-=-=-=-=-=-='
puts arr.length #menghitung jumlah array
puts '=-=-=-=-=-=-=-=-=-=-='


# Delete if / eliminasi item
arr2 =[1,2,3,4,5,6,7,8]
arr2.delete_if{ |nilai|
    nilai > 5
}
puts arr2
arr3 = ['A','B','C']
arr3.delete_if{ |item|
    item == 'A'
}
puts arr3
puts '=-=-=-=-=-=-='
# on line
arr3.delete_if{ |item| item == 'B'}
puts arr3
puts '=-=-=-=-=-='

# Join
puts [1,2,3,4,5,6].join(',')
puts [1,2,3,4,5,6].join()

# Push 
arr = [1,2,3,4,5]
arr.push(6)
puts arr
arr.push(7,8,9) # bisa beberapa item
arr << 10 # cuma bisa 1 item
puts arr

# Pop = hapus item dari depan ke belakang 
arr = [1,2,3,4]
arr.pop(1)
puts arr
arr.pop(2)
puts arr

puts '=-=-=-=-=-=-='

# Unshift dan Shift (tambah dan hapus dari belakang ke depan)
arr = [1,2,3,4,5]
arr.unshift(0) # nambah item di 0 di belakang 1
arr.unshift(-1,-2)
puts arr
puts '=-=-=-=-=-='
arr.shift(1) # hapus item  -1 
puts arr

puts '=-=-=-=-'

# Looping array
arr = ['D','C','B','A','Z','N']
arr.each{ |item|
    puts "item : #{item}"
}

# Reverse Looping array
5.downto(0){ |x|
    puts arr[x]
}

# Split Array
new_arr = %w(satu dua tiga empat lima)
puts new_arr


puts "=-=-=-=-=-"
# Acak array dengan shuffle
arr = [1,2,3,4,5]
puts "#{arr.shuffle}"
puts "#{arr}"
puts "=-=-=-=-=-="

# Looping array dengan while
total = 0
while total < 5 do
    puts "total = #{total}"
    total += 1
end

puts "=-=-=-=-==-=-="
arr2 = [1,2,3,4,5]
for item in arr2 
    puts item
end

# Select array tradisional
array = [60,70,80,90,100,45]    
arrayBaru = []
array.each{ |item|
    if item >= 70
        arrayBaru << item
    end
}
puts arrayBaru

puts "======================"
# Select
arrayBaru = array.select{ |item|
    item < 100
}
puts "#{arrayBaru}"

# one line select
puts "#{array.select {|item| item < 100}}"

