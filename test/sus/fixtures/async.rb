require 'sus/fixtures/async'

describe Sus::Fixtures::Async::VERSION do
	it 'is a version string' do
		expect(subject).to be =~ /\d+\.\d+\.\d+/
	end
end
