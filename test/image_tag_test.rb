require 'helper'

class TestImageTag < Minitest:Test
  context "image tag in post" do
    setup do
      @site = fixture_site
    end

    should "write image tag" do
      assert_equal '<img src="my-image.webp">', 
    end
  end
end