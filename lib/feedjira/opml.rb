require "uri"
require "feedjira"

require "feedjira/opml/version"

require "feedjira/parser/opml_outline"
require "feedjira/parser/opml_head"
require "feedjira/parser/opml_body"
require "feedjira/parser/opml"

Feedjira.configure do |config|
  config.parsers.unshift(Feedjira::Parser::OPML)
end
