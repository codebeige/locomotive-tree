# locomotivettree

Configure any LocomotiveCMS content type to build up a directed root tree graph
out of its entries. Provide drops and helpers for easy traversal and querying
of the resulting nested structure.

## Installation

Add a dependency to the Gemfile of *both* your Wagon site and the Locomotive
Rails application.

```ruby
gem 'locomotive-tree'
```

## Usage

Add a `content-tree` property to your content type definition.

#### Example

Inside `app/content_types/categories.yml`:

```yml
---
name: Categories
description: Hierarchy of nested product categories

content-tree: true

label_field_name: name
fields:
  - name:
      label: Name
      type: string
```


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run
`rake spec` to run the tests. You can also run `bin/console` for an interactive
prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To
release a new version, update the version number in `version.rb`, and then run
`bundle exec rake release`, which will create a git tag for the version, push
git commits and tags, and push the `.gem` file to
[rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at
https://github.com/codebeige/locomotive-subnav. This project is intended to
be a safe, welcoming space for collaboration, and contributors are expected to
adhere to the [Contributor Covenant](http://contributor-covenant.org) code of
conduct.


## License

The gem is available as open source under the terms of the
[MIT License](http://opensource.org/licenses/MIT).
