## Konami::Fo [![Build Status](https://travis-ci.org/rthbound/konami-fo.png?branch=master)](https://travis-ci.org/rthbound/konami-fo)[![Coverage Status](https://coveralls.io/repos/rthbound/konami-fo/badge.png)](https://coveralls.io/r/rthbound/konami-fo)[![Code Climate](https://codeclimate.com/github/rthbound/konami-fo.png)](https://codeclimate.com/github/rthbound/konami-fo)

Enter the Konami code, then 'eff off, courtesy of FOaaS. You can configure konami-fo to use any of the services available (probably not intuitive yet, updates coming soon)

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
