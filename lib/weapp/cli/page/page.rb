module Weapp
  module Cli
    class Page < Thor::Group
      include Thor::Actions

      argument :name
      def self.source_root
        File.dirname(__FILE__)
      end

      def create_files
        base_path = "pages/#{name}/#{name}"
        @js_path = base_path + ".js"
        @wxml_path = base_path + ".wxml"
        @wxss_path = base_path + ".wxss"
        template('templates/example.js', @js_path)
        template('templates/example.wxml', @wxml_path)
        template('templates/example.wxss', @wxss_path)
      end

      def insert_route
        inject_into_file "app.json", after: "\"pages\": [\n" do <<-EOF
    "pages/#{name}/#{name}",
EOF
        end
      end
    end
  end
end
