require "minitest/autorun"
require "jekyll"
require "ostruct"
require_relative "../lib/jekyll-cloud-image"

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
    Jekyll::Configuration.from(full_overrides.merge(
                         "source" => source_dir
                       ))
  end

  def fixture_site(overrides = {})
    Jekyll::Site.new(site_configuration(overrides))
  end

  def build_configs(overrides, base_hash = default_configuration)
    Jekyll::Utils.deep_merge_hashes(base_hash, overrides)
  end

  def default_configuration
    Marshal.load(Marshal.dump(Jekyll::Configuration::DEFAULTS))
  end

  def render_content(content, override = {})
    base_config = {
      "source"      => source_dir,
      "destination" => dest_dir,
    }
    site = fixture_site(base_config.merge(override))

    if override["read_posts"]
      site.posts.docs.concat(PostReader.new(site).read_posts(""))
    elsif override["read_collections"]
      CollectionReader.new(site).read
    elsif override["read_all"]
      site.read
    end

    @result = render_with(site, content)
  end

end

