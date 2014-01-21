require "rails/generators"
require "rails/generators/rails/model/model_generator"
require "rails/generators/rails/resource/resource_generator"

module Rails
  module Generators
    class ResourceGenerator < ModelGenerator
      include ResourceHelpers

      hook_for :resource_template, :default => true  do |generator|
        invoke generator, [ controller_name, options[:actions] ]
      end
    end
  end
end
