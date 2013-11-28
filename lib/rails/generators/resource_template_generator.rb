module Rails
  module Generators
   class ResourceTemplateGenerator < NamedBase
      source_root File.expand_path("../templates", __FILE__)

      def create_resource_template_files
        base_path = File.join("app/views", class_path, file_name)
        empty_directory base_path

        template "show.rabl", File.join(base_path, "show.rabl")
        template "index.rabl", File.join(base_path, "index.rabl")
      end

    end
  end
end
