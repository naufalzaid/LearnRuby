# Bentuk pertama
File.open('file_saya.txt', 'w'){ |f|
    f.write 'Saya sedang belajar ruby'
    f.write "\n"
    f.write 'Ruby adalah bahasa yang keren'
}

# Bentuk kedua
File.open('file_saya2.txt', 'w'){ |f|
    f.puts 'Saya sedang belajar ruby'
    f.puts 'Ruby adalah bahasa yang keren'
}

File.open('file_append.txt', 'w'){ |f|
    f.puts 'Laravel'
    f.puts 'Django'
    f.puts 'Go Lang'
    f.puts 'Codeigniter'
}