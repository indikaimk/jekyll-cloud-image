require_relative 'helper'

class TestImageTag < Minitest::Test
  include DirectoryHelpers
  
  def setup
    @site = fixture_site
  end

  def test_write_image_tag
    assert_equal '<img src="my-image.webp">', ""
  end
end
