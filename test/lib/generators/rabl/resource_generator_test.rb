require 'test_helper'
require 'rabl/generators'

require 'rails/generators/resource_generator'
require 'rails/generators/resource_template_generator'

class Rails::Generators::ResourceTemplateGeneratorTest < Rails::Generators::TestCase
  destination File.join(Rails.root)
  tests Rails::Generators::ResourceGenerator
  arguments %w(account --actions index show)

  setup :prepare_destination
  setup :copy_routes

  test "should invoke template engine" do
    run_generator
    assert_file "app/views/accounts/show.rabl", %r(object @account)
    assert_file "app/views/accounts/index.rabl", %r(collection @accounts)
    assert_not_empty Dir.glob(File.join(Rails.root, "db/migrate/*create_account*"))
  end
end
