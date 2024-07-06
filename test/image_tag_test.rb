require_relative 'helper'

class TestImageTag < Minitest::Test
  include DirectoryHelpers

  def setup
    content = <<~CONTENT
    ---
    title: Post with image tag
    ---

    {% cloud_image test.webp %}
  CONTENT
  end

  def test_write_image_tag
    assert_equal '<img src="my-image.webp">', ""
  end
end
