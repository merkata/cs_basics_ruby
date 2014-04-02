#!/usr/bin/ruby
require "benchmark"

puts "Enter a number to calculate the sum of 1 up to this number"

num = gets.to_i

sum = 0
gaussum = 0
optimal = 0
step = 0
gausstep = 0
ostep = 0
end_num = num
start_num = 1
optimum = 0

Benchmark.bm(7) do |bench|

    bench.report("for cycle:") {
for x in 1..num do
    sum += x
    step += 1
end

#puts "Your sum is #{sum} and it was calculated in #{step} steps"
}
bench.report("two arrays:") {
if end_num.even?
    #puts "Number is even"
    gausstep += 1
    brange = (1..(num/2)).to_a
    erange = (num.downto(num/2 + 1)).to_a
    begin
        gaussum += brange.pop + erange.pop
        gausstep += 1
    end until brange.empty? && erange.empty?
else
    #puts "Number is odd"
    remainder = num / 2 + num % 2
    #puts "Calculated remainder is #{remainder}"
    brange = (1..(remainder - 1)).to_a
    erange = (num.downto(remainder + 1)).to_a
    begin
        gaussum += brange.pop + erange.pop
        gausstep += 1
    end until brange.empty? && erange.empty?
    gaussum += remainder
    gausstep += 1
end

#puts "Your gaus sum is #{gaussum} and it was calculated in #{gausstep} steps"
}

bench.report("sum of pairs:") {

#puts "And now for the optimal imo solution"
if end_num.even?
    optimum = (num/2) * (1 + num)
else
    optimum = (num/2) * (1 + num) + (num/2 + num%2)
end
}
end

puts "For cycle yields #{sum} in #{step} steps"
puts "Array sum yields #{gaussum} in #{gausstep} steps"
puts "Real Gauss yields #{optimum} in one step"
