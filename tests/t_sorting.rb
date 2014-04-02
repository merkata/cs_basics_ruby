require 'test/unit'
$LOAD_PATH << File.expand_path('../../', __FILE__)
require 'sorting'
include CSProgramming::Sorting

class TestSorting < Test::Unit::TestCase
    def setup
        @data_array = generate_data
    end

    def test_generation_of_data
        assert_equal true, @data_array.compact.size > 0
    end

    def test_selection_sort_empty
        assert_equal [], selection_sort
    end

    def test_selection_sort_one_element
        assert_equal [1], selection_sort([1])
    end

    def test_selection_sort
        assert_equal [1,2,3,4,5], selection_sort([3,2,5,4,1])
    end

    def test_insertion_sort_empty
        assert_equal [], insertion_sort
    end

    def test_insertion_sort_one_element
        assert_equal [1], insertion_sort([1])
    end

    def test_insertion_sort
        assert_equal [1,2,3,4,5], insertion_sort([3,2,5,4,1])
    end

    def test_bubble_sort_empty
        assert_equal [], bubble_sort
    end

    def test_bubble_sort_one_element
        assert_equal [1], bubble_sort([1])
    end

    def test_bubble_sort
        assert_equal [1,2,3,4,5], bubble_sort([3,2,5,4,1])
    end

    def test_radix_sort_empty
        assert_equal [], radix_sort
    end

    def test_radix_sort_one_element
        assert_equal [1], radix_sort([1])
    end

    def test_radix_sort_simple
        assert_equal [1,2,3,4,5], radix_sort([3,2,5,4,1])
    end
     
    def test_radix_sort_with_padding
        assert_equal [1,3,4,20,101], radix_sort([20,3,101,1,4])
    end

end
