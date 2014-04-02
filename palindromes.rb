#!/usr/bin/ruby
#don't forget to chomp

puts "A program to see if a word is a palindrome"

puts "Enter a word to be tested"

word = gets.chomp.to_s

puts "Got word #{word} and reversed is #{word.reverse}"

if word == word.reverse
    puts "Your word is a palindrome"
else
    puts "Word is not a palindrome"
end
