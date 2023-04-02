# frozen_string_literal: true

# Released under the MIT License.
# Copyright, 2022, by Samuel Williams.

require 'sus/fixtures/async'
require 'sus/fixtures/async/version'

describe Sus::Fixtures::Async::VERSION do
	it 'is a version string' do
		expect(subject).to be =~ /\d+\.\d+\.\d+/
	end
end
