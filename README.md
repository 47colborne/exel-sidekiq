# EXEL::Sidekiq

[![Gem Version](https://badge.fury.io/rb/exel-sidekiq.svg)](https://badge.fury.io/rb/exel-sidekiq)
[![Build Status](https://snap-ci.com/47colborne/exel-sidekiq/branch/master/build_image)](https://snap-ci.com/47colborne/exel-sidekiq/branch/master)

This gem adds Sidekiq support for [EXEL's](https://github.com/47colborne/exel) async command.

## Installation

Add this line to your application's Gemfile:

    gem 'exel-sidekiq'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install exel-sidekiq

## Usage

By requiring this gem, Sidekiq support will automatically be added to [EXEL](https://github.com/47colborne/exel). Any calls to `async` will enqueue a worker to run the given block. If you wish to use a queue other than default, you may specify its name in the options passed to `async`. The retry limit can also be set, as in the following example:

    async queue: :my_queue, retry: 3 do
        process with: MyProcessor
    end

You can optionally provide a string in ```context[:async_label]``` which will be passed to the Sidekiq worker. This is intended to be a human readable label that will be visible on the Sidekiq admin pages to assist in debugging and monitoring your jobs.

## Contributing

1. Fork it ( https://github.com/47colborne/exel-sidekiq )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
