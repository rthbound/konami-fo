## Konami::Fo [![Code Climate](https://codeclimate.com/github/rthbound/konami-fo.png)](https://codeclimate.com/github/rthbound/konami-fo)

Enter the Konami code, then 'eff off.

## Installation

Add this line to your application's Gemfile:

    gem 'konami-fo'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install konami-fo

## Usage
```
$ bundle exec pry

[1] pry(main)> require "konami/fo"
=> true

[2] pry(main)> Konami::Fo.new().execute!
Enter the Konami code!
Fuck off, You. - Me
```
## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
