# frozen_string_literal: true

# Released under the MIT License.
# Copyright, 2024, by Samuel Williams.

require 'sus/fixtures/async/scheduler_context'

module NestedContext
	def before
		super
		
		expect(scheduler).to be_a(Async::Scheduler)
	end
	
	def after
		expect(scheduler).to be_a(Async::Scheduler)
		
		super
	end
	
	def around(&block)
		super do
			expect(scheduler).to be_a(Async::Scheduler)
			
			block.call
		end
		
		expect(scheduler).to be_nil
	end
end

describe Sus::Fixtures::Async::SchedulerContext do
	with 'scheduler context' do
		include Sus::Fixtures::Async::SchedulerContext
		
		it "runs in a scheduler" do
			expect(scheduler).to be_a(Async::Scheduler)
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
		
		with 'nested context' do
			include NestedContext
			
			it "runs in a scheduler" do
				expect(scheduler).to be_a(Async::Scheduler)
			end
		end
	end
end
