def fizz_buzz(number)
  case 
  when number % 15 == 0
     "fizz_buzz"
  when number % 3 == 0
     "fizz"
  when number % 5 == 0
     "buzz"
  else
     number.to_s
  end
end

=begin
fizz_buzz(1)
fizz_buzz(2)
fizz_buzz(3)
fizz_buzz(5)
fizz_buzz(15)
fizz_buzz(18)
fizz_buzz(255)

puts "================="

(1..100).each{|number| fizz_buzz(number)}
=end
