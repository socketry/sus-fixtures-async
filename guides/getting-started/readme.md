# Getting Started

This guide explains how to use the `sus-fixtures-async` gem to test async components in a reactor.

## Installation

Add the gem to your project:

``` bash
$ bundle add sus-fixtures-async
```

## Usage

Here is a basic example of how to use the `Sus::Fixtures::Async` fixture:

``` ruby
include Sus::Fixtures::Async::ReactorContext

# Override the default timeout
def timeout = 1

it 'runs in a reactor' do
	expect(Async::Task.current).not.to be == nil
end
```
