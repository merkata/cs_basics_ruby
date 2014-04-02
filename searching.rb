module CSProgramming
	module Searching
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

		def linear_search_first(occurence, data)
			found = false
			i = 0
			result = ""
			while (i < data.length && !found)
				if data[i] == occurence
					result = "Found element #{occurence} at index #{i}"
					found = true
				end
					i += 1
			end
			if !found
				result = "Could not find #{occurence}"
			end
			result
		end

		def binary_search(occurence, data)
			sorted_data = data.sort
			low = 0
			high = data.length - 1
			middle = (low + high) / 2
			found = false
			while (low <= high && !found)
				middle = (low + high) / 2
				if data[middle] == occurence
					result = "Found element #{occurence} at index #{middle}"
					found = true
				end

				if (occurence < data[middle])
					high = middle - 1
				elsif (occurence > data[middle])
					low = middle + 1
				end
			end

			if !found
				result = "Could not find #{occurence}"
			end
			result
		end

	end
end