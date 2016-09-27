module Weapp
  module Cli
    class App < Thor::Group
      include Thor::Actions

      argument :name
      def self.source_root
        File.dirname(__FILE__)
      end

      def create_basic_files
        template('templates/README.md', "#{name}/README.md")
        template('templates/app.json', "#{name}/app.json")
        template('templates/app.js', "#{name}/app.js")
        template('templates/app.wxss', "#{name}/app.wxss")
        template('templates/gitignore', "#{name}/.gitignore")
      end

      def create_index_files
        template('templates/pages/index/index.js', "#{name}/pages/index/index.js")
        template('templates/pages/index/index.wxml', "#{name}/pages/index/index.wxml")
        template('templates/pages/index/index.wxss', "#{name}/pages/index/index.wxss")
      end

    end
  end
end
