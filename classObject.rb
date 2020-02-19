# Object Oriented Programming - Class Normal Function
class Calculator
    def penjumlahan(a, b)
        a + b
    end

    def pengurangan(a, b)
        a - b
    end
end

calc = Calculator.new #object - insert class to variable
hasil_penjumlahan = calc.penjumlahan(10, 5) #taking function from class
puts hasil_penjumlahan

hasil_pengurangan = calc.pengurangan(10, 5)
puts hasil_pengurangan


# Object Oriented Programming - Constructor
class CalculatorKool
    def initialize(a, b)
        @parameter_a = a #method initialize harus ada
        @parameter_b = b # '@' adalah variable umum pada class
        @lokal = a + b
    end

    def penjumlahan
        @parameter_a + @parameter_b
    end

    def perkalian
        @parameter_a * @parameter_b
    end
    
end

calc = CalculatorKool.new(10, 5) #Giving parameter as default variable
hasil_plus = calc.penjumlahan
puts hasil_plus
hasil_minus = calc.perkalian
puts hasil_minus

# Object Oriented Programming - Getter Setter
class Print
    def initialize(text)
        @text = text
    end

    def print
        puts @text
    end
    
end

printer = Print.new('Saya sedang belajar getter-setter')
printer.print

printer = Print.new('Saya sedang mendalami getter-setter')
printer.print

puts '======================'

class Print
    attr_accessor :text
    attr_writer:text #setter
    attr_reader:text #getter

    def initialize(text)
        @teks = text
    end
    
    #setter
    def text=(text)
        @text = text
    end

    #getter
    def text
        @text
    end

    def print
        puts "mencetak : #{@teks}"
    end
    
end

printer = Print.new("Saya sedang belajar getting dan setter di OOP Ruby")
printer.print
printer.text = "tulisan kedua"
printer.print
printer.text = "setter dan getter"
puts printer.text
puts "================================================"


class Print
    # attr_accessor :text
    # attr_writer:text #setter
    attr_reader:text #getter

    def initialize(text)
        @teks = text
    end
    
    #setter
    def text=(text)
        @text = text
    end

    #getter
    # def text
    #     @text
    # end

    def print
        puts "mencetak : #{@teks}"
    end
    
end

printer = Print.new("Saya sedang belajar getting dan setter di OOP Ruby")
printer.print
printer.text = "tulisan kedua"
printer.print
printer.text = "setter dan getter"
puts printer.text

puts "============"
# Getter
class MesinPencetak
    attr_reader :text, :duration

    def initialize(text, duration)
        @text = text
        @duration = duration
    end

    def cetak
        puts "Hari ini saya belajar method #{@text}."
        puts "Waktu yang diperlukan untuk belajarnya adalah #{@duration}"
    end
end

mesinku = MesinPencetak.new("getter", "sebentar")
mesinku.cetak
puts mesinku.text
puts mesinku.duration


puts "================"
# Setter
class MesinPencetak
    attr_reader :text
    attr_writer :text

    def initialize(text)
        @text = text
    end

    def cetak
        puts "Hari ini saya belajar method #{@text}."
    end
end

mesinku = MesinPencetak.new("getter")
puts mesinku.cetak
puts mesinku.text
mesinku.text = "setter"
puts mesinku.text
puts mesinku.cetak

puts "====================="

class MesinPencetak
    attr_reader :text, :duration
    # Fungsi-nya untuk mengambil atribut/instant variable yang diinginkan

    attr_writer :text, :duration
    # Fungsi-nya untuk mengambil atribut/instant variable yang diinginkan

    def initialize(text, duration)
        @text = text
        @duration = duration
    end

    def cetak
        puts "Hari ini saya belajar method #{@text}."
        puts "Waktu yang diperluan untuk belajarnya adalah #{@duration}"
    end
end

mesinku = MesinPencetak.new("getter", "sebentar")
mesinku.cetak
mesinku.text = "setter"
mesinku.duration = "semenit"

mesinku.cetak

puts "=============================="

class MesinPencetak

    attr_accessor :text, :duration
    # attr ini udah mencangkup attr-reader dan attr-writer

    def initialize(text, duration)
        @text = text
        @duration = duration
    end

    def cetak
        puts "Hari ini saya belajar method #{@text}."
        puts "Waktu yang diperluan untuk belajarnya adalah #{@duration}"
    end
end

mesinku = MesinPencetak.new("getter", "sebentar")
mesinku.cetak
puts mesinku.text
puts mesinku.duration 

puts "============"
class MesinPencetak
    attr_accessor :text, :format

    def initialize(text)
        @text = text
    end
    def cetak(format)
        cekformat(@text, format)
    end
    private
       def cekformat(text, format)
        if format == :plain
            text
        elsif format == :blink
            "*** #{text} ***"
        end
    end
end

mesinku = MesinPencetak.new('Belajar Ruby dan Ruby on Rails')
puts mesinku.cetak(:blink)
puts mesinku.cetak(:plain)

# puts mesinku.cekformat("tes", :blink)


# Inharitance -> menggunakan class yang sudah ada di class baru
class Siswa
    attr_accessor :nama, :materi, :nilai

    def initialize(nama, materi, nilai)
        @nama = nama
        @materi = materi
        @nilai = nilai
    end

    def belajar
        puts "Siswa #{@nama} sedang belajar #{@materi}"
    end

    def ulangan
        puts "Siswa #{@nama} mendapatkan nilai #{@nilai} untuk materi #{@materi}."
    end
end

class Kelas12 < Siswa
    attr_accessor :mapel, :nilai_un

    def initialize(mapel, nilai_un)
        @mapel = mapel
        @nilai_un = nilai_un
    end

    def unbk
        puts "Siswa #{@nama} mengerjakan UN mapel #{@mapel} dengan nilai #{@nilai_un}."
    end
    
end

sutera = Siswa.new('Sutera', 'Ruby', 10)
sutera.belajar
sutera.ulangan

mutia = Kelas12.new('Matematika', 10)
mutia.nama = 'Mutia'
mutia.materi = "Ruby on Rails"
mutia.nilai = 9
mutia.belajar
mutia.ulangan
mutia.unbk


# Override

class Siswa
    attr_accessor :nama, :materi, :nilai

    def initialize(nama, materi, nilai)
        @nama = nama
        @materi = materi
        @nilai = nilai
    end

    def belajar
        puts "Siswa #{@nama} sedang belajar #{@materi}"
    end 

    def ulangan
        puts "Siswa #{@nama} mendapatkan nilai #{@nilai} untuk materi #{@materi}."
    end
end

class Kelas12 < Siswa
    attr_accessor :mapel, :nilai_un

    def initialize(mapel, nilai_un)
        @mapel = mapel
        @nilai_un = nilai_un
    end

    def belajar
        puts "Siswa #{@nama} belajar sungguh-sungguh tentang #{@materi}."
    end

    def unbk
        puts "Siswa #{@nama} mengerjakan UN mapel #{@mapel} dengan nilai #{@nilai_un}."
    end
    
end

mutia = Kelas12.new('Matematika', 10)
mutia.nama = 'Mutia'
mutia.materi = 'Ruby on Rails'
mutia.nilai = 9
mutia.belajar

sutera = Siswa.new('Sutera', 'Ruby', 10)
sutera.belajar
sutera.ulangan
mutia = Kelas12.new('Matematika', 10)
mutia.nama = 'Mutia'
mutia.materi = 'Ruby on Rails'
mutia.nilai = 9
mutia.belajar
mutia.unbk

puts "=============="

# contoh class turunan
class ApiConnection
    attr_accessor :url, :name
    def initialize(url, name)
        @url = url
        @name = name
    end    

    def connect
        @connect = true #logika program di sini
    end

    def status
        if @connect
            :connected
        else
            :unconnected
        end
    end
end

class FacebookConnection < ApiConnection
    def version
        1
    end

    def status
        :connected
    end
end

facebook_connection = FacebookConnection.new('https://facebook.com', 'facebook')

status = facebook_connection.status
version = facebook_connection.version

puts status
puts version

puts "================="
# Super Method
class ApiConnection
    attr_accessor :url, :name
    def initialize(url, name)
        @url = url
        @name = name
    end    

    def connect
        @connect = true #logika program di sini
    end

    def status
        if @connect
            :connected
        else
            :unconnected
        end
    end
end

class FacebookConnection < ApiConnection
    def version
        1
    end

    def connect
        super
        puts 'connection established'
    end

    def status
        super
    end
end

facebook_connection = FacebookConnection.new('https://facebook.com', 'facebook')

facebook_connection.connect
status = facebook_connection.status
version = facebook_connection.version

puts status
puts version

# Self -> langsung panggil
class ApiConnection
    attr_accessor :url, :name
    def initialize(url, name)
        @url = url
        @name = name
    end    

    def connect
        @connect = true #logika program di sini
    end

    def status
        if @connect
            :connected
        else
            :unconnected
        end
    end
end

class FacebookConnection < ApiConnection
    class << self
        def version
            2
        end
        
        def status
            :connected
        end
    end
    

end

puts FacebookConnection.version
puts FacebookConnection.status

facebook_connection = FacebookConnection.new('https://facebook.com', 'facebook')

facebook_connection.connect
