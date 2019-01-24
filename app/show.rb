require_relative './init'

account = Account.last
study = Study.last
puts "Account: #{account.inspect}"
puts "Connected account endpoints: #{account.connected_endpoints.to_a}"
puts "Study: #{study.inspect}"
puts "Connected study endpoints: #{study.connected_endpoints.to_a}"
