require "yaml"
require "minitest/autorun"
require "minitest/utils"
require "pry-byebug"

module MyApp
  class Environment
    attr_reader :root_uri, :database_uri

    def self.load!
      environment = ENV["APP_ENV"] || "development"
      options = YAML.load_file("/tmp/config.yaml")[environment]
      root_uri = options["root_uri"]
      database_uri = options["database_uri"]

      new root_uri, database_uri
    end

    def initialize root_uri, database_uri
      @root_uri = root_uri
      @database_uri = database_uri
    end

  end

  class App
    def self.environment
      @environment ||= Environment.load!
    end
  end

  class EnvironmentTest < MiniTest::Test
    def test_loads_the_environment
      environment = Environment.load!
      assert_equal "http://localhost:2938", environment.root_uri
    end
  end
end
