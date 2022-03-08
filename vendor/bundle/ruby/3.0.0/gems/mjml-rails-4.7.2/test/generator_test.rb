# frozen_string_literal: true

require 'test_helper'
require 'generators/mjml/mailer/mailer_generator'

class GeneratorTest < Rails::Generators::TestCase
  tests Mjml::Generators::MailerGenerator
  destination File.expand_path('tmp', __dir__)
  setup :prepare_destination

  test 'assert all views are properly created with given name' do
    run_generator %w[notifier foo bar baz]

    assert_file 'app/views/layouts/mailer.html.mjml' do |mailer|
      assert_match '<mjml>', mailer
      assert_match '<mj-body>', mailer
      assert_match '<%= yield %>', mailer
    end

    assert_file 'app/views/notifier_mailer/foo.html.erb' do |template|
      assert_match '<%= @greeting %>', template
      assert_match 'app/views/notifier_mailer/foo.html.erb', template
    end

    assert_file 'app/views/notifier_mailer/bar.html.erb'
    assert_file 'app/views/notifier_mailer/baz.html.erb'
  end
end
