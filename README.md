[![Circle CI](https://circleci.com/gh/eebbesen/caruby2go.svg?style=shield)](https://circleci.com/gh/eebbesen/caruby2go)

# caruby2go

caruby2go is a gem that exposes [the car2go api](https://code.google.com/p/car2go/wiki/index_v2_1).

For all operations you need to [get your own consumer key from car2go](https://www.car2go.com/en/austin/car2go-apps/).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'caruby2go'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install caruby2go

## Packaging

    $ rake build

Executing `build` (in this project's root) will build and install the gem locally.

## Publishing

    $ gem push pkg/caruby2go-<version>.gem

## Local usage
The script requires you to set the `CONSUMER_KEY` environment variable to your car2go consumer key

    $ set CONSUMER_KEY=<your_consumer_key>
    $ bin/caruby2go p kobenhavn
or 

    $ CONSUMER_KEY=<your_consumer_key> bin/caruby2go p kobenhavn
or set it for the application user via a profile file.

## Finding a city name
Use the `locationName` value (spaces removed) from the following call

    $ CONSUMER_KEY=<your_consumer_key> bin/caruby2go l

[Freerider](https://github.com/eebbesen/freerider) has a script that will return an alphabetized, formatted list of all valid locations, too.

## Reference implementation
[Freerider](https://github.com/eebbesen/freerider) is a gem which uses caruby2go to access car2go's API to identify cars you can refuel for free minutes.

## Contributing

1. Fork it ( https://github.com/[my-github-username]/caruby2go/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
