# Anipedia

Anipedia is Wikipedia Scraper

## Usage

Command Lines

```ruby
$ bin/anipedia たまこまーけっと あらすじ
```

Librarys

```ruby
require 'anispedia'
anispedia = Anispedia::Mechine.new "たまこまーけっと"
anispedia.key("あらすじ")
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
