require 'test_helper'
require 'rabl/generators'

class Rails::Generators::ResourceTemplateGeneratorTest < Rails::Generators::TestCase
  destination File.join(Rails.root)
  tests Rails::Generators::ResourceGenerator
  arguments %w(Account --actions index show)

  setup :prepare_destination
  setup :copy_routes

  test "should invoke template engine" do
    run_generator
    assert_file "app/views/accounts/show.rabl", %r(object @account)
    assert_file "app/views/accounts/index.rabl", %r(collection @accounts)
  end
end
