module Jekyll
  module CloudImage
    class Setup < Jekyll::Command
      class << self
        def init_with_program(prog)
          prog.command(:setup) do |c|
            c.syntax "new [options]"
            c.description 'Create a new Jekyll site.'

            c.option 'dest', '-d DEST', 'Where the site should go.'

            c.action do |args, options|
              # Jekyll::Site.new_site_at(options['dest'])
              FileUtils.mkdir_p '_cloud_images'
              puts "test command"
            end
          end
        end
      end
    end
  end
end