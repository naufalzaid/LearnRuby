a = 'APA'
if 'APA'
    puts "Berhasil"
elsif 'AGA'
    puts "Great"
else 
    puts "Gagal"
end

# On Line Logical
puts "Berhasil" if a == "APA"

# Unless Logical
puts "Berhasil" unless a == "APA"

# 
nilai = 70
if (nilai >= 80)
    puts "Nilai A"
elsif (nilai >= 75)
    puts "Nilai B"
else
    puts "Nilai C"
end

username = 'unity'
password = 'karant'

if (username == 'unity' && password == 'karant')
    puts "Sukses"
else
    puts "Gagal"
end
# If inside if

# Case when Conditional
gender = gets.chomp
case gender
when 'P'
    puts "Anda Perempuan"
when 'L'
    puts "Anda Laki - Laki"
else
    puts "Silahkan melakukan tes lab"
end
