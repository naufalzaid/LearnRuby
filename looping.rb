#  Normal Looping
10.times do
    puts " Zidan"
end

# Times with index
10.times do |x|
    puts x
end

# Times with gets (inputan)
3.times do
    print 'masukan kata :'
    a = gets.chomp
    puts a
end

# One Lines times
3.times do puts 'One Line times1'end
3.times {puts 'One line times2'}

# Ascending loop (ASC)
1.upto(7) do |x|
    puts "Ascending #{x}"
end

# Descending loop (DESC)
5.downto(1) do |x|
    puts "Descending #{x}"
end

