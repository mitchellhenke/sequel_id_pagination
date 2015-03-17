# SequelIdPagination

Gives a dataset method to page by id, similar to how Twitter does here: https://dev.twitter.com/rest/public/timelines

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'sequel_id_pagination', github: 'mitchellhenke/sequel_id_pagination'
```

And then execute:

    $ bundle

## Usage

```ruby
count = 10
since_id = 20
max_id = nil
User.dataset.limit_by_id(count, since_id, max_id)
# => SELECT * FROM `users` WHERE (`id` > 20) ORDER BY `id` DESC LIMIT 10

since_id = nil
max_id = 19
User.dataset.limit_by_id(count, since_id, max_id)
# => SELECT * FROM `users` WHERE (`id` <= 19) ORDER BY `id` DESC LIMIT 10

since_id = 15
max_id = 19
User.dataset.limit_by_id(count, since_id, max_id)
# => SELECT `id`, `name` FROM `users` WHERE ((`id` > 15) AND (`id` <= 19)) ORDER BY `id` DESC LIMIT 10

## Contributing

1. Fork it ( https://github.com/[my-github-username]/sequel_id_pagination/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
