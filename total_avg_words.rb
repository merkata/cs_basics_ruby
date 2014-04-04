#!/usr/bin/env ruby
module CSProgramming
	module Exercises
		def words_in(sentence = "", display: "all")
			if sentence == ""
				puts "Enter a sentence to display total/average count of chars"
				sentence = gets.chomp
			end
			words = sentence.split(' ')
			word_count = words.each_with_object ([]) {|word, object| object << word.length}
			case display
			when "all"
				result = []
				result << total_word_count(word_count)
				result << average_word_count(word_count)
				result
			when "total"
				total_word_count(word_count)
			when "average"
				average_word_count(word_count)
			else
				-1
			end
		end

		private

		def total_word_count(word_length_array)
			word_length_array.reduce(:+)
		end

		def average_word_count(word_length_array)
			word_length_array.reduce(:+) / word_length_array.length
		end

	end
end