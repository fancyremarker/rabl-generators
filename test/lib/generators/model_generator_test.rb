require 'test_helper'
require 'rabl/generators'

require 'rails/generators/resource_generator'
require 'rails/generators/resource_template_generator'

class ModelGeneratorText < Rails::Generators::TestCase
  destination File.join(Rails.root)
  tests Rails::Generators::ModelGenerator
  arguments %w(Account name:string age:integer)

  setup :prepare_destination

  test "should generate models" do
    run_generator
    assert_file "app/models/account.rb", /class Account < ActiveRecord::Base/
  end
end
