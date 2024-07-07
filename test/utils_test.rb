require_relative 'helper'

class TestClass
  include Jekyll::CloudImage::Utils
end

class TestUtils < Minitest::Test
  def test_convert_key_to_string
    params_hash = {alt: "my alter text"}
    t = TestClass.new
    assert_equal "alt=\"my alter text\"", t.convert_key_to_string(:alt, params_hash)
  end

  def test_convert_key_to_string_return_empty_string_when_key_not_preset 
    params_hash = {alt: "my alter text"}
    t = TestClass.new
    assert_equal "", t.convert_key_to_string(:alt1, params_hash)
  end

  def test_convert_key_to_string_does_not_add_quotations_if_already_exists
    params_hash = {alt: "\"my alter text\""}
    t = TestClass.new
    assert_equal "alt=\"my alter text\"", t.convert_key_to_string(:alt, params_hash)    
  end
end