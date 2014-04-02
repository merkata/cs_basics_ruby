require 'test/unit'
$LOAD_PATH << File.expand_path("../../", __FILE__)
require 'searching'
include CSProgramming::Searching

class TestSearching < Test::Unit::TestCase
    def setup
        @test_data = generate_data
    end

    def test_generation_of_data
        assert_equal true, @test_data.compact.size > 0
    end

    def test_linear_search_one_occurence_found
    	assert_equal "Found element test at index 4", linear_search_first("test", ["this", "is", "just", "a", "test"])
    end

    def test_linear_search_one_occurence_not_found
    	assert_equal "Could not find giraffe", linear_search_first("giraffe", ["this", "is", "just", "a", "test"])
	end
	
	def test_binary_search_elements
		assert_equal "Found element 5 at index 4", binary_search(5, [1,3,2,4,5,])
	end

	def test_binary_search_one_element
		assert_equal "Found element 5 at index 0", binary_search(5, [5])
	end

	def test_binary_missing_element
		assert_equal "Could not find 5", binary_search(5, [1,3,2,4,7,23])
	end
end