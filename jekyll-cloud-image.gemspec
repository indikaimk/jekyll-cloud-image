
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib) 
require_relative "lib/jekyll_cloud_image/version"
# require_relative "lib/jekyll_cloud_image/version"

Gem::Specification.new do |spec|
  spec.name          = "jekyll-cloud-image"
  spec.version       = Jekyll::CloudImage::VERSION
  spec.authors       = ["indikaimk"]
  spec.email         = ["indikaimk@gmail.com"]

  spec.summary       = %q{Image processing for Jekyll}
  spec.description   = %q{Upload images to cloud like S3.}
  spec.homepage      = "https://github.com/indikaimk/jekyll-cloud-image"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://github.com/indikaimk/jekyll-cloud-image"
    spec.metadata["changelog_uri"] = "https://github.com/indikaimk/jekyll-cloud-image"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "jekyll", "~> 4.3"

  spec.add_development_dependency "bundler", "~> 2.5.6"
  spec.add_development_dependency "rake", "~> 10.0"
end
