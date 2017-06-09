## Installation

Add this line to your application's Gemfile:

```ruby
gem 'btc_exchange_info'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install btc_exchange_info

## Usage

Currently only part of the exchange is supported

China

- Yunbi
- Okcoin
- Btctrade

Taiwan

- Bitoex
- Maicoin


If you want to get buy info now form Maicoin

```
BtcExchangeInfo::Maicoin.btc("buy")
```

also you can get sell info now form Yunbi

```
BtcExchangeInfo::Yunbi.btc("sell")
```

You will get it float like `91073.88`


Get website url of exchange

```
BtcExchangeInfo::Btctrade.url
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/btc_exchange_info. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

