# NewsMonitor

[![Build Status](https://travis-ci.org/rainerborene/newsmonitor.svg)](https://travis-ci.org/rainerborene/newsmonitor)
[![Code Climate](https://codeclimate.com/github/rainerborene/newsmonitor/badges/gpa.svg)](https://codeclimate.com/github/rainerborene/newsmonitor)
[![Test Coverage](https://codeclimate.com/github/rainerborene/newsmonitor/badges/coverage.svg)](https://codeclimate.com/github/rainerborene/newsmonitor/coverage)

NewsMonitor API wrapper.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'newsmonitor', require: 'news_monitor'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install newsmonitor

## Usage

```ruby
# Create the API object
api = NewsMonitor::API.new username: 'jonhdoe', password: 'pwd'

# Search similar articles grouped by cluster
clusters = api.search("lavagem")

# Find article by id
api.find_article(72109310)

# Find cluster by id
api.find_cluster(7173190)
```

## Contributing

1. Fork it ( https://github.com/rainerborene/newsmonitor/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## License

The MIT License (MIT)

Copyright (c) 2015 Rainer Borene

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
