require 'rails/generators/erb'

module Rails
  module Generators
   class ResourceTemplateGenerator < Erb::Generators::Base
      source_root File.expand_path("../templates", __FILE__)

      def create_resource_template_files
        base_path = File.join("app/views", class_path, file_name)
        empty_directory base_path


        [:index, :show].each do |action|
          @action = action
          @path = File.join(base_path, filename_with_extensions(action))
          template filename_with_extensions(action), @path
        end
      end

      protected

      def format
        nil
      end

      def handler
        :rabl
      end
    end
  end
end
