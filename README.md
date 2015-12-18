# eunomics_guard

A small project to see if websites working properly.


# Install

```
git clone https://github.com/maxcsh/eunomics_guard
bundle install
rake db:create
rake db:migrate
```

To update website messages
```ruby
$ rake guard:scrap
```

Use crontab to scrap per 6 hours
```ruby
$ wheneverize .
$ whenever --update-crontab
```