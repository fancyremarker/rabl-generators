require "rails/generators"
require "rails/generators/rails/resource/resource_generator"

module Rails
  module Generators
    class ResourceGenerator
      hook_for :resource_template, default: true
    end
  end
end
