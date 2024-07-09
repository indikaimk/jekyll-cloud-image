# commands
# cloud-image-setup
# _config.yml
# image_url_prefix = https://xyz
# cloud_storage:
#   cloud_provider: S3
#   bucket_name: cloudqubes
# cloud-image-convert
# cloud-image-upload

module Jekyll
  module CloudImage
    class Setup < Jekyll::Command
      class << self
        def init_with_program(prog)
          prog.command(:"setup-cloud-image") do |c|
            c.syntax "new [options]"
            c.description 'Create a new Jekyll site.'

            c.option 'provider', '-p PROVIDER', 'Cloud storage provider'
            c.option 'bucket', '-b BUCKET', 'Cloud storage bucket'
            c.option 'URL', '-u URL', 'Cloud storage bucket URL'


            c.action do |args, options|
              # Jekyll::Site.new_site_at(options['dest'])
              FileUtils.mkdir_p '_cloud_images'
              update_git_ignore_file
              puts options
              puts args
              puts "jekyll-cloud-image setup completed."
            end
          end
        end


        #Add _cloud_images
        def update_git_ignore_file 
          puts "Adding entries to the .gitignore file"
          git_ignore = File.open('.gitignore', 'a')
          git_ignore.write("_cloud_images\n")
          git_ignore.close          
        end

      end
    end
  end
end