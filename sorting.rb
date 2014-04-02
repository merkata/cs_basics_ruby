#!/usr/bin/env ruby
#implement different ways of sorting, possibilites currently are
#selection, insertion and bubble sort

module CSProgramming
	module Sorting
		SDATA = 50
		LIMIT_N = 100
		def generate_data
			data_array = Array.new(SDATA)
			i = 0
			while (i < SDATA)
				data_array[i] = rand(LIMIT_N) + 1
				i += 1
			end
			data_array
		end

		def selection_sort(arr = [])
			for i in (0..arr.size - 2)
				min_pos = i
				for j in (i + 1)..(arr.size - 1)
					if arr[j] < arr[i]
						min_pos = j
					end
				end
				arr[i], arr[min_pos] = arr[min_pos], arr[i]
			end
			arr
		end

		def insertion_sort(arr = [])
			for i in (0..arr.size - 1)
				j = i
				done = false
				while ((j > 0) && !done)
					if arr[j] < arr[j - 1]
						arr[j], arr[j - 1] = arr[j - 1], arr[j]
					end
					j -= 1
				end
			end
			arr
		end

		def bubble_sort(arr = [])
			for i in (0..arr.size - 2)
				for j in (i + 1)..(arr.size - 1)
					if arr[i] > arr[j]
						arr[i], arr[j] = arr[j], arr[i]
					end
				end
			end
			arr
		end

		def radix_sort(arr = [])
			return [] if arr.empty?
			max_length = 0
			arr.each {|el| max_length = el.to_s.length if el.to_s.length > max_length}
			padded_arr = arr.map {|el| el.to_s.rjust(max_length, "0")}
			for i in (0..max_length - 1)
				buckets = {}
				for j in 0..9
					buckets[j.to_s] = []
				end

				for j in (0..padded_arr.length - 1)
					num = padded_arr[j]
					digit = num[max_length - 1 - i]
					buckets[digit].push(num)
				end
				padded_arr = buckets.values.flatten
			end
			padded_arr.map {|el| el.to_i}
		end

	end
end