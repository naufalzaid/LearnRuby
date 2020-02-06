file = File.read('file_append.txt')
puts file.inspect

puts "=========================="
# untuk mengolah menjadi sebuah array

file = File.read('file_append.txt')
array = file.split("\n")
puts array.inspect

# kalau ingin menghapus file 