# Definition (Def)
def halo
    puts 'Hello World!'
end
halo 

# Def with Return 
def hai
    return 'Saya di sini' #kalo ada return liat paling atas
    return 'Anda di sini'
    'Saya di sana' #kalo gaada return liat paling akhir
end
puts hai

# Def return with manipulation
puts hai.reverse

# Parameter
def numeric(angka1, angka2)
    puts angka1 + angka2
    puts angka1 * angka2
end
numeric(3, 9)

# Default Parameter
def surat(nama='zidan', email='user@gmail.com')
    puts "#{nama} #{email}"
end
surat
surat('Hiya')
surat('duarr', 'duar@gmail.com')

# Plain parameter
def kirim(nama: 'Mou', email: 'username@gmail.com')
    puts "#{nama} #{email}"
end

kirim
kirim(nama: 'Zidan')
kirim(nama: 'Wawan', email: 'zidan@nama.com')

# Variable sebagai method

# cara 1
cetak = Proc.new do
    puts 'Cetak kata'
end

# cara 2
cetak = Proc.new{
    puts 'Cetak kata'
}
cetak.call()

method = Proc.new{ |nama, user| 
    puts nama
    puts user
}
method.call('Zidan', 'Admin')
method['Naufal', 'User']

pembagian = -> (angka1, angka){
    angka1 / angka
}
puts pembagian.call(12, 3)#wajib pakai call()

# Splat method
def menu(*items)
    puts items[0]
    puts items[1]
    puts items[2]
    puts items[3]
end
array1 = ['siapa','rumah','lokasi','disana']
menu(array1)

# Array Parameter
def setarray(itemA, itemB, itemC)
    puts itemA, itemB, itemC
end
arr1 = ['Barang', 'Thing', 'Device']
setarray(*arr1)