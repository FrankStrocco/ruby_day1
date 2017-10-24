# TIMES LOOP

# y = 0
# x = 20
# x.times do
#   puts y += 1
# end
#
#
#
# x.times.reverse_each do
#   puts y -= 1
# end

# each LOOP

# x = [*1..20]
#
# x.each do |element|
#   puts element
# end


# each LOOP with a HASH

# hash = {a: 1, b: 2, c: 3, d: 4, e: 5}
#
# hash.each {|key,value| puts "The #{key} has a rating of #{value}"}

# array = [1,2,3,4,5]
#
# array.each_with_index() {|element,index| p [element,index]}

# array.each_with_index() do |element,index|
#   puts index.to_s + element.to_s
# end
#
# puts "Hi, Input a number between 1 and 10."
#
# number = gets.chomp.to_i
#
# if (number >= 1 && number <= 10)
#   p "valid"
# else
#   p "invalid"
#
# end




def valid_date()
  puts "Enter a month"
  month = gets.chomp.to_i
  puts "Enter a date"
  date = gets.chomp.to_i
  puts "Enter a year"
  year = gets.chomp.to_i
  return isValid(month, date, year)
end

def isValid(month, date, year)
  if month.between?(1,12)
    puts "this is working"
    if month == 2 && year % 4
      puts "true" if date.between?(1,29)
    elsif month == 2 && date.between?(1,28)
      puts "true"
    end

    monthArr = [nil, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    valid = "false"
    case month
    when 1
      valid = "true" if date.between?(1, monthArr[1])
    when 3
      valid = "true" if date.between?(1, monthArr[3])
    when 4
      valid = "true" if date.between?(1, monthArr[4])
    when 5
      valid = "true" if date.between?(1, monthArr[5])
    when 6
      valid = "true" if date.between?(1, monthArr[6])
    when 7
      valid = "true" if date.between?(1, monthArr[7])
    when 8
      valid = "true" if date.between?(1, monthArr[8])
    when 9
      valid = "true" if date.between?(1, monthArr[9])
    when 10
      valid = "true" if date.between?(1, monthArr[10])
    when 11
      valid = "true" if date.between?(1, monthArr[11])
    when 12
      valid = "true" if date.between?(1, monthArr[12])
    end
  end
  valid == "true" ? (puts "true") : (puts "false")
end


valid_date()
