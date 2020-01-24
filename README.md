# EngagesparkClient

Ruby wrapper for the engageSPARK API.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'engagespark_client'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install engagespark_client

## Usage

```
client = EngagesparkClient.new(token: "YOUR-TOKEN", org_id: 321)
client.send_sms(
  to: "639181234567",
  message: "Hello, world!",
)

response.error # an error message in the response, if any
response.message_id # "SMS20200124T085255-123-4567"
response.estimate_parts # 1
response.estimate_micro # 20000
response.estimate # "0.02"
response.delivery_deadline # "2020-01-25T08:52:55.75319741Z"
response.contact_id # 0
response.to # "639181234567"
response.message # "Hello, world!"
```

See `spec/acceptance` for usage.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rspec spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/bloom-solutions/engagespark_client-ruby. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the EngagesparkClient project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/bloom-solutions/engagespark_client-ruby/blob/master/CODE_OF_CONDUCT.md).
