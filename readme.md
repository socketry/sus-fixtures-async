# Sus::Fixtures::Async

Provides a convenient fixture for testing async components in a reactor.

[![Development Status](https://github.com/socketry/sus-fixtures-async/workflows/Test/badge.svg)](https://github.com/socketry/sus-fixtures-async/actions?workflow=Test)

## Installation

``` bash
$ bundle add sus-fixtures-async
```

## Usage

``` ruby
include Sus::Fixtures::Async::ReactorContext

# Override the default timeout
def timeout = 1

it 'it runs in a reactor' do
	expect(Async::Task.current).not.to be == nil
end
```
