require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

# Load environment vars from Dotenv gem
Dotenv::Railtie.load

# Set Hostname (mentioned in DotEnv documentation -> https://www.rubydoc.info/gems/dotenv-rails/2.1.1)
HOSTNAME = ENV['HOSTNAME']

module TelegramBot
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.1
    config.eager_load_paths << Rails.root.join("services")

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
