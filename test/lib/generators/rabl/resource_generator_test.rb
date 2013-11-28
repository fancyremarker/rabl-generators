require 'test_helper'
require 'rabl/generators'

class Rails::Generators::ResourceTemplateGeneratorTest < Rails::Generators::TestCase
  destination File.join(Rails.root)
  tests Rails::Generators::ResourceGenerator
  arguments %w(Account)

  setup :prepare_destination
  setup :copy_routes

  test "should invoke template engine" do
    run_generator
    assert_file "app/views/account/show.rabl", %r(object @account)
    assert_file "app/views/account/index.rabl", %r(collection @accounts)
  end
end
