#  Semua huruf capital
puts "ini adalah huruf kapital".upcase

# Semua huruf kecil
puts "DENGARKAN DIA".downcase

# Kapital di awal kalimat
puts 'judul sebuah cerita'.capitalize

# putar kata
puts 'jaun'.reverse

# Multiple manipulation
puts 'serabut induk'.reverse.upcase

# Permanent manipulation
kata = 'Kata'
puts kata.reverse
puts kata.upcase
puts kata
puts kata.upcase! #ini yang permanent karena pake '!'
puts kata
puts kata.downcase
puts kata

# One replace => yang di awal saja
puts 'kata kata mutiara dari katana'.sub('kata', 'mamank')

# Replace semua
puts 'kata kata mutiara dari katana'.gsub('kata', 'mamank')

# multi replace
puts 'kata kata mutiara dari katana'.gsub('kata', 'mamank').gsub('mutiara', 'cihuy')


# Strip
# Fungsi = menghilangkan spasi di samping kata 
pass = "    password    m".strip
puts pass
puts pass if pass == "password"
puts '  kata    a'
puts '  kata    a'.strip
puts '  kata    '.strip

# Buat array dari string
puts 'ini,adalah,nama,saya,yaitu,zidan'.split(',')
puts 'ini adalah nama saya yaitu zidan'.split('a')