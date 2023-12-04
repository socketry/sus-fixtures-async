# frozen_string_literal: true

# Released under the MIT License.
# Copyright, 2022-2023, by Samuel Williams.

require 'sus/fixtures/async/reactor_context'

describe Sus::Fixtures::Async::ReactorContext do
	with 'reactor context' do
		include Sus::Fixtures::Async::ReactorContext
		
		it "runs in a reactor" do
			expect(reactor).to be_a(Async::Reactor)
		end
		
		it "has a default timeout" do
			expect(timeout).to be == 60
		end
		
		it "can run with timeout" do
			expect do
				run_with_timeout(0.001) do |task|
					task.annotate("running example")
					task.sleep(0.1)
				end
			end.to raise_exception(Async::TimeoutError)
		end
	end
end
