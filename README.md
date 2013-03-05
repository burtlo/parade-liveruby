# Parade::Liveruby

Provide live execution of ruby code for Parade

## Installation

Add this line to your application's Gemfile:

    gem 'parade-liveruby'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install parade-liveruby

## Usage

Require it in your `parade` file:

```ruby
require 'parade-liveruby'

title "Example Presentation"

description "My Awesome Presentation"

section "Introduction" do
  slides "intro.md"
  slides "installation.md"
  slides "navigation.md"
end
```

Require it in your `config.ru` file:

```ruby
require "parade"
require "parade-liveruby"
run Parade::Server.new
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
