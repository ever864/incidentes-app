# frozen_string_literal: true

module Mjml
  class Railtie < Rails::Railtie
    config.mjml = Mjml
    config.app_generators.mailer template_engine: :mjml

    initializer 'mjml-rails.register_template_handler' do
      ActionView::Template.register_template_handler :mjml, Mjml::Handler.new
      Mime::Type.register_alias 'text/html', :mjml
    end

    config.to_prepare do
      # make sure we have a valid mjml binary
      Mjml.valid_mjml_binary
    end
  end
end
