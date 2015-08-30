# Opal::Rails::WebConsole

Enable to type ruby codes in an interactive web console for opal on the browser for Ruby on Rails applications, just like the rails web-console

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'opal-irb', github: 'fkchang/opal-irb'
gem 'opal-rails-web_console'
```

And then execute:

    $ bundle

## Usage

### require javascript e.g.: `application.js.rb`

    require 'opal-rails_web_console'

### require stylesheet e.g.: `application.css`

    *= require opal-rails_web_console

### call helper in layout, e.g.: `application.html.erb`

    <%= opal_console %>

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/rainchen/opal-rails-web_console/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
