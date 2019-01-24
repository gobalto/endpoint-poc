# How to get this working

bundle install
bundle exec db:create
bundle exec rake db:migrate

## Create some account endpoints and connect them at account and study level
bundle exec ruby app/create.rb

## Verify it is all persisted properly
bundle exec ruby app/show.rb
