# require_relative 'helper'

# class TestUtils < Minitest::Test
#   def test_convert_to_hash
#     string = '{a: "test", b: "test2"}'
#     expected_hash = {"a" => "test", "b" => "test2"}
#     assert_equal expected_hash, Jekyll::CloudImage::Utils.convert_to_hash(string)
#   end

#   def test_convert_string_with_commas_to_hash
#     string = '{a: "test", b: "test2, sd"}'
#     expected_hash = {"a" => "test", "b" => "test2, sd"}
#     assert_equal expected_hash, Jekyll::CloudImage::Utils.convert_to_hash(string)
#   end

# end