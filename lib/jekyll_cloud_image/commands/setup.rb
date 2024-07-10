# commands
# cloud-image-setup
# _config.yml
# cloud_storage:
#   cloud_provider: S3
#   bucket_name: cloudqubes
#   bucket_url: https://xyz.com
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

            c.option 'provider', '-p PROVIDER', 'Cloud storage provider. Supported providers: S3.'
            c.option 'bucket_name', '-n BUCKET_NAME', 'Cloud storage bucket name'
            c.option 'URL', '-u URL', 'Cloud storage bucket URL'

            c.action do |args, options|
              # Jekyll::Site.new_site_at(options['dest'])
              FileUtils.mkdir_p '_cloud_images'
              update_git_ignore_file
              # puts "jekyll-cloud-image setup completed."
            end

            c.action do |args, options|
              # conf_hash = {}
              # if options["provider"]
              #   conf_hash[:cloud_storage][:provider] = options["provider"]
              # end
              #   print <<EOF
              #     Cloud storage provider name not provided.
              #     Please add
              #     cloud_storage:
              #       cloud_provider: S3
              #       bucket_name: cloudqubes
              #       bucket_url: https://xyz.com
              #   EOF
              # end
              puts options
              if options["URL"] && options["bucket_name"] && options["provider"]
                conf_string = "cloud_storage:\n" +
                "  cloud_provider: #{options["provider"]}\n" +
                "  bucket_name: cloudqubes\n" +
                "  bucket_url: https://xyz.com\n"
                config_file = File.open('_config.yml', 'a')
                config_file.write(conf_string)
                config_file.close
              else
                puts "Some cloud storage parameters are not provided.\n" +
                "Please add the cloud storage parameters in the _config.yml as below\n" +
                "cloud_storage:\n" +
                "  cloud_provider: <provider_name>\n" +
                "  bucket_name: <storage bucketname>\n" +
                "  bucket_url: <storage bucket URL>\n"
              end
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

        # #Update _config.yml
        # def update_jekyll_config(options)
        #   if 
        # end
      end
    end
  end
end