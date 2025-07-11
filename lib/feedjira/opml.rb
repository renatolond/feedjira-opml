# frozen_string_literal: true

require_relative "opml/version"

require "feedjira"

require_relative "parser/opml_outline"
require_relative "parser/opml_head"
require_relative "parser/opml_body"
require_relative "parser/opml"

Feedjira.configure do |config|
  config.parsers.unshift(Feedjira::Parser::OPML)
end
