#!/bin/bash

gem uninstall jekyll-cloud-image
rm jekyll-cloud-image-1.0.0.gem 
git add .
git commit -m "updated text format" 
gem build jekyll-cloud-image.gemspec  
gem install jekyll-cloud-image-1.0.0.gem