require 'rails'
require 'rabl'

require 'rabl/generators/version'

module Rabl
  module Generators
    class Railtie < ::Rails::Railtie
      generators do
        require File.expand_path('../../rails/generators/resource_generator', __FILE__)
        require File.expand_path('../../rails/generators/resource_template_generator', __FILE__)
      end
    end
  end
end
