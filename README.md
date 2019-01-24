# How to get this working

```bash
bundle install
bundle exec db:create
bundle exec rake db:migrate
```

## Create some account endpoints and connect them at account and study level
```bash
bundle exec ruby app/create.rb
```

## Verify it is all persisted properly
```bash
bundle exec ruby app/show.rb
```
