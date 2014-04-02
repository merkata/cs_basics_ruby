#!/usr/bin/env ruby

puts "We have a method for calculation and we try to run the type you specified on it"

def calculation(num1, num2)
    yield num1.to_i, num2.to_i
end

add = lambda {|a, b| a + b}
sub = lambda {|a, b| a - b}
mul = lambda {|a, b| a * b}
div = lambda {|a, b| a / b}

puts "We have received #{ARGV.length} number of arguments"
if ARGV.length < 3
    puts<<USAGE
    "You need to supply 3 arguments for this to work: an operation
    like add/sub/mul/div and two numbers to operate on
    like mul 2 3
    should yield 6"
    USAGE
end

op, num1, num2 = ARGV
case op
when /add/i then puts calculation(num1, num2, &add)
when "sub" then puts calculation(num1, num2, &sub)
when "mul" then puts calculation(num1, num2, &mul)
when "div" then puts calculation(num1, num2, &div)
else puts "No functioning method specified"
end
