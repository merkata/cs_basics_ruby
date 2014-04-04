require 'test/unit'
$LOAD_PATH << File.expand_path("../../", __FILE__)
require 'total_avg_words'
include CSProgramming::Exercises

class TestWordsIn < Test::Unit::TestCase
    def test_single_word_total
        assert_equal 5, words_in("hello", display: "total")
    end

    def test_sentence_total
        assert_equal 21, words_in("some tests fail some dont", display: "total")
    end

    def test_sentence_all
        assert_equal [21, 4], words_in("some tests fail some dont")
    end

    def test_single_word_avg
        assert_equal 5, words_in("hello", display: "average")
    end

    def test_sentence_avg
        assert_equal 4, words_in("some tests fail some dont", display: "average")
    end

    def test_wrong_argument
        assert_equal -1, words_in("this wont work", display: "kitten")
    end
end
