# commands
# cloud-image-setup
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

            c.option 'dest', '-d DEST', 'Where the site should go.'

            c.action do |args, options|
              # Jekyll::Site.new_site_at(options['dest'])
              FileUtils.mkdir_p '_cloud_images'
              update_git_ignore_file

              puts "jekyll-cloud-image setup completed."
            end
          end
        end


        #Add _cloud_images
        def update_git_ignore_file 
          puts "Adding entries to the .gitignore file"
          git_ignore = File.open('.gitignore', 'a')
          git_ignore.write("_cloud_images\n\r")
          git_ignore.close          
        end

      end
    end
  end
end