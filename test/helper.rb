require "minitest/autorun"
require "jekyll"

module DirectoryHelpers
  def root_dir(*subdirs)
    File.expand_path(File.join("..", *subdirs), __dir__)
  end

  def dest_dir(*subdirs)
    test_dir("dest", *subdirs)
  end

  def source_dir(*subdirs)
    test_dir("source", *subdirs)
  end

  def test_dir(*subdirs)
    root_dir("test", *subdirs)
  end

  def site_configuration(overrides = {})
    full_overrides = build_configs(overrides, build_configs(
                                                "destination" => dest_dir,
                                                "incremental" => false
                                              ))
    Configuration.from(full_overrides.merge(
                         "source" => source_dir
                       ))
  end

  def fixture_site(overrides = {})
    Jekyll::Site.new(site_configuration(overrides))
  end

end

