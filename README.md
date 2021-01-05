<p align="center">
  <a aria-label="Ruby logo" href="https://el-soul.com">
    <img src="https://badgen.net/badge/icon/Made%20by%20ELSOUL?icon=ruby&label&color=black&labelColor=black">
  </a>
  <br/>

  <a aria-label="Ruby Gem version" href="https://rubygems.org/gems/shikiho">
    <img alt="" src="https://badgen.net/rubygems/v/shikiho/latest">
  </a>
  <a aria-label="Downloads Number" href="https://rubygems.org/gems/shikiho">
    <img alt="" src="https://badgen.net/rubygems/dt/shikiho">
  </a>
  <a aria-label="License" href="https://github.com/elsoul/shikiho/blob/master/LICENSE">
    <img alt="" src="https://badgen.net/badge/license/Apache/blue">
  </a>
</p>

## What's shikiho?

Welcome to shikiho Scraper!

Shikiho is for Japanese Stock Market Data（東京証券取引所）

## Dependency

Google Chrome

- [Chromedriver](https://chromedriver.chromium.org/downloads)
- [Google Chrome](https://www.google.co.jp/chrome/)

or


Firefox

- [Geckodriver](https://github.com/mozilla/geckodriver/releases)
- [Firefox](https://www.mozilla.org/ja/firefox/new/)


※ You must choose compatible versions of browser and driver

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'shikiho'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install shikiho



## Usage

Get Stock Price Now

    $ shikiho #{STOCK CODE}

e.g

    $ shikiho 4755

response

```ruby
{:code=>"4755", :price=>"990", :datetime=>2021-01-05 00:27:10.65855 UTC}
```


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org/gems/shikiho).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/elsoul/shikiho. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [Apache-2.0 License](https://www.apache.org/licenses/LICENSE-2.0).

## Code of Conduct

Everyone interacting in the HotelPrice project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/elsoul/shikiho/blob/master/CODE_OF_CONDUCT.md).
