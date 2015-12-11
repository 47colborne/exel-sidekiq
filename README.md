# EXEL::Sidekiq

This gem adds Sidekiq support for [EXEL's](https://github.com/47colborne/exel) async command.

## Installation

Add this line to your application's Gemfile:

    gem 'exel-sidekiq'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install exel-sidekiq

## Usage

If you wish to use a queue other than default, you may specify it's name in the options passed to `async`. The retry limit
can also be set, as in the following example:

    async queue: :my_queue, retry: 3 do
        process with: MyProcessor
    end

## Contributing

1. Fork it ( https://github.com/47colborne/exel-sidekiq )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
