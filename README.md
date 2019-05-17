# IPFS HTTP Client for Ruby

![](https://ipfs.io/ipfs/QmQJ68PFMDdAsgCZvA1UVzzn18asVcf7HVvCDgpjiSCAse)

> This gem provides IPFS HTTP client for Ruby, see [https://ipfs.io](https://ipfs.io).

**Work in progress.**

## Installation
Requires Ruby >= 2.1, since it uses the new required keyword arguments syntax.

Add this line to your application's Gemfile:

```ruby
gem 'ipfs'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ipfs

## Usage
### Initialize client

```
pry(main)> client = Ipfs::Client.new 'http://localhost:5001'
=> #<Ipfs::Client:0x00007fb6ec459610 @endpoint="http://localhost:5001">

```

### add
#### Add a file

```
pry(main)> client.add "a.txt"
{"Name"=>"a.txt", "Hash"=>"Qmbvkmk9LFsGneteXk3G7YLqtLVME566ho6ibaQZZVHaC9", "Size"=>"10"}
```

#### Add a directory
```
pry(main)> client.add_dir "~/ipfs"
=> [{"Name"=>"ipfs/sub/txt.txt", "Hash"=>"QmVpJWKCh3QbJYGWyPXXBY4t95B89uEMNT7VUoD2JtkpH9", "Size"=>"12"},
 {"Name"=>"ipfs/xx.txt", "Hash"=>"QmUFgREzM1tEKTvUHdo5hTQhxn9j1qHM1ZwR4u8e8Srgji", "Size"=>"13"},
 {"Name"=>"ipfs/sub", "Hash"=>"QmdcJi9C6Gy2yCXGhevEmuAn4o4c57PsL8Va3b22TXpBRV", "Size"=>"65"},
 {"Name"=>"ipfs", "Hash"=>"QmVwpFxhz1HJ96DbrXhgFBxPj4RkGT5snw6pACXkVwPbSw", "Size"=>"175"}]
```

### ls

```
pry(main)> client.ls "Qmbvkmk9LFsGneteXk3G7YLqtLVME566ho6ibaQZZVHaC9"
=> {"Objects"=>[{"Hash"=>"Qmbvkmk9LFsGneteXk3G7YLqtLVME566ho6ibaQZZVHaC9", "Links"=>[]}]
```

### cat
#### Cat a file
```
pry(main)> client.cat "Qmbvkmk9LFsGneteXk3G7YLqtLVME566ho6ibaQZZVHaC9"
=> "The file content.\n"
```

#### Cat a file and write to disk
```
pry(main)> client.cat_to_file "Qmbvkmk9LFsGneteXk3G7YLqtLVME566ho6ibaQZZVHaC9", "~/ipfs/a.txt"
=> true
```

### pin rm
```
pry(main)> client.pin_rm "Qmbvkmk9LFsGneteXk3G7YLqtLVME566ho6ibaQZZVHaC9"
=> {"Pins"=>["Qmbvkmk9LFsGneteXk3G7YLqtLVME566ho6ibaQZZVHaC9"]}
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on [GitHub](https://github.com/Fryie/ipfs-ruby).
