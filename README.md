# Jekyll::Cloud::Image

`jekyll-cloud-image` convert images in `assets/images/posts` to webp format and uploads to cloud. S3

Then you can use those images in markdown or HTML.
Need to support [responsive images] in Markdown.

depends on `ruby-vips` for converting the images



Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/jekyll/cloud/image`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'jekyll-cloud-image'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jekyll-cloud-image

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/jekyll-cloud-image. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Jekyll::Cloud::Image project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/jekyll-cloud-image/blob/master/CODE_OF_CONDUCT.md).

[ruby-vips]: https://github.com/libvips/ruby-vips
[responsive-images]: https://developer.mozilla.org/en-US/docs/Learn/HTML/Multimedia_and_embedding/Responsive_images

https://github.com/clustergarage/jekyll-code-tabs/blob/master/lib/jekyll-code-tabs.rb