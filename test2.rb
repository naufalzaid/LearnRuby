hari = 'senin'
 
hari.upcase!
hari.reverse!

inputan = gets.chomp

puts "hari ini adalah hari #{hari}".gsub('hari', inputan)


puts '================'

def fungsi(object)
    4.downto(0) do |x|
        puts object[x]
    end
end

array = ['Siapa', 'Yang', 'Ada', 'Dirumah']
fungsi(array)

puts "=============="

def set(a,b,c,d)
    puts b,d,c,a
end

arr = ['Hutan', 'Gunung', 'Pantai', 'Jalanan']

set(*arr)

puts "================="

array1 = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]
puts array1[14]
array1[5] = 'ABCD'
array1[0] = 1.5 
puts "#{array1}"

array1.delete(10)

13.downto(10) do |x|
    array1[x] = 'D'
end
puts"#{array1}"

puts"#{array1}".gsub('1', '')

puts "==================="

yanglek =[]
4.upto(9) do |x|
    yanglek.push(x)
end

yanglek.delete_if do |y|
    y > 7
end

puts yanglek.join('x')