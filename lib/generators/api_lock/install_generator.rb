require 'rails/generators/base'
require 'securerandom'

module ApiLock
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../../templates", __FILE__)

      desc "Creates an API Lock initializer and copy locale files to your application."

      def copy_initializer
        template "api_lock.rb", "config/initializers/api_lock.rb"
      end

      # def copy_locale
      #   copy_file "../../../config/locales/en.yml", "config/locales/api_lock.en.yml"
      # end

      def rails_4?
        Rails::VERSION::MAJOR == 4
      end
    end
  end
end
