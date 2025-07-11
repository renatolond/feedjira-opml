# frozen_string_literal: true

require_relative "lib/feedjira/opml/version"

Gem::Specification.new do |spec|
  spec.name = "feedjira-opml"
  spec.version = Feedjira::OPML::VERSION
  spec.authors = ["Chris Kalafarski"]
  spec.email = ["chris@farski.com"]

  spec.summary = "OPML parsing with Feedjira"
  spec.description = "Rudimentary OPML parsing classes for Feedjira"
  spec.homepage = "https://github.com/scour/feedjira-opml"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.1.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  # spec.metadata["homepage_uri"] = spec.homepage
  # spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  gemspec = File.basename(__FILE__)
  spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
    ls.readlines("\x0", chomp: true).reject do |f|
      (f == gemspec) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .github appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "feedjira", "~> 3.0"
end
