require "helper"
require "fluent/plugin/parser_nginx_error.rb"

class NginxErrorParserTest < Test::Unit::TestCase
  setup do
    Fluent::Test.setup
  end

  test "failure" do
    flunk
  end

  private

  def create_driver(conf)
    Fluent::Test::Driver::Parser.new(Fluent::Plugin::NginxErrorParser).configure(conf)
  end
end
