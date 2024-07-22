# frozen_string_literal: true

# Released under the MIT License.
# Copyright, 2022, by Samuel Williams.

source "https://rubygems.org"

gemspec

group :maintenance, optional: true do
	gem "bake-gem"
	gem "bake-modernize"
	
	gem "utopia-project"
end

group :test do
	gem "bake-test"
	gem "covered"
	gem "decode"
	gem "rubocop"
end
