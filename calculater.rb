
def calculation_sum(first_number,second_number,calc)
  case calc
  when '+'
    puts first_number + second_number
  when '-'
    puts first_number - second_number
  when '/'
    puts first_number / second_number
  when '*'
    puts first_number * second_number
  else 
    puts 'try again'
    calculation_sum
  end
end

def power(first_number,second_number)
  puts first_number ** second_number
end

def square_root(first_number)
  puts Math.sqrt(first_number)
end

def bmi(kg,meters)
  metres_result = meters ** 2
  puts (kg / metres_result).round(2)
end

def bmil(lb,meters)
  puts (lb / (meters**2)) * 703  
end

def mortgage(principal,rate,nbpayments)
  een = (1 + (rate**nbpayments)) / ((1 + (rate**nbpayments)) -1)
  puts (principal * een).round(2)
end

def trip_calulator(distance,mpg,cost,speed)
  

puts 'pick your calculator (b)asic (a)dvanced (bm)i (m)ortage (t)rip calculator'
calculator = gets.chomp
if calculator == 'b'
  puts 'first number'
  first_number = gets.to_i
  puts 'pick your calc'
  calc = gets.chomp
  puts 'first number'
  first_number = gets.to_i
  calculation_sum(first_number,second_number, calc)
elsif calculator == 'a'
  puts "pick (p)ower or (s)qare root"
  choice = gets.chomp
  if choice == 'p'
    puts 'first number'
    first_number = gets.to_i
    puts 'second number'
    second_number = gets.to_i
    power(first_number,second_number)
  elsif choice == 's'
    puts 'get number'
    first_number = gets.to_i
    square_root(first_number)
  end
elsif calculator == 'bm'
  puts 'choice (k)g or (l)bs'
  choice = gets.chomp
  if choice == 'k'
    puts 'kg'
    kg = gets.to_f
    puts 'height in meters'
    meters = gets.to_f
    bmi(kg,meters)
  elsif choice == 'l'
    puts 'lb'
    kg = gets.to_f
    puts 'height in meters'
    meters = gets.to_f
    endbmil(lb,meters)
  end
elsif calculator == 'm'
  puts 'principal'
  principal = gets.to_f
  puts 'yearly intrest rate'
  rate = gets.to_f
  puts 'number of payments'
  nbpayments = gets.to_f
  mortgage(principal,rate,nbpayments)
elsif calculator == 't'
  puts 'distance'
  distance = gets.to_f
  puts 'mpg'
  mpg = gets.to_f
  puts 'cost per gallon'
  cost = gets.to_f
  puts 'speed'
  speed = gets.to_f
end
