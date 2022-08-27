# frozen_string_literal: true

require_relative "lib/sus/fixtures/async/version"

Gem::Specification.new do |spec|
	spec.name = "sus-fixtures-async"
	spec.version = Sus::Fixtures::Async::VERSION
	
	spec.summary = "Test fixtures for running in Async."
	spec.authors = ["Samuel Williams"]
	spec.license = "MIT"
	
	spec.cert_chain  = ['release.cert']
	spec.signing_key = File.expand_path('~/.gem/release.pem')
	
	spec.homepage = "https://github.com/ioquatix/sus-fixtures-async"
	
	spec.metadata = {
		"funding_uri" => "https://github.com/sponsors/ioquatix/",
	}
	
	spec.files = Dir.glob(['{lib}/**/*', '*.md'], File::FNM_DOTMATCH, base: __dir__)
	
	spec.required_ruby_version = ">= 2.7.0"
	
	spec.add_dependency "async"
	spec.add_dependency "sus", "~> 0.10"
end
