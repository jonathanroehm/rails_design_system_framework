require "rails_design_system_framework/version"
require "rails_design_system_framework/configuration"

module RailsDesignSystemFramework
  class Error < StandardError; end

  class << self
    attr_writer :configuration

    def configuration
      @configuration ||= RailsDesignSystemFramework::Configuration.new
    end

    def configure
      yield configuration
    end
  end
end
