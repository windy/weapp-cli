module Weapp
  module Cli
    class App < Thor::Group
      include Thor::Actions

      argument :name
      def self.source_root
        File.dirname(__FILE__)
      end

      def create_files
        template('templates/README.md', "#{name}/README.md")
      end
    end
  end
end
