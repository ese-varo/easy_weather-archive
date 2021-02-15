# EasyWeather

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/easy_weather`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'easy_weather'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install easy_weather

## Usage

First, you need to create an acount at https://api.openweathermap.org/
in order to get an API KEY.

Then, you need to set your API KEY as an environment variable:
- Write in the console export API_KEY_NAME=VALUE

So, with that set you can start using the gem by creating an instance
of the Weather class like this:
weather = Weather.new("Your city")

Then, you can do the following actions:

Get the forecast data:
weather.forecast_data 

Get the astronomy data:
weather.astronomy_data

Get the current temperature:
weather.temperature

Get the current wind data:
weather.wind

Get the atmosphere data:
weather.atmosphere_data
## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/easy_weather. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/easy_weather/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the EasyWeather project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/easy_weather/blob/master/CODE_OF_CONDUCT.md).
