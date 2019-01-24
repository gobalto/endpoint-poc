require_relative './init'

ActiveRecord::Base.logger = Logger.new(STDOUT)

ActiveRecord::Base.transaction do
  account = Account.create(name: 'account')
  study = Study.create(name: 'study')

  endpoints = 1.upto(10).map do |i|
    account.endpoints.create(name: "Endpoint #{i}", endpoint_type: 0)
  end

  account.connected_endpoints = [endpoints[0], endpoints[5], endpoints[6]]
  study.connected_endpoints = [endpoints[1], endpoints[4], endpoints[6], endpoints[9]]
 
  #account.endpoint_connections = [endpoints[0], endpoints[5], endpoints[6]].map do |endpoint|
  #  EndpointConnection.new(endpoint: endpoint)
  #end
  #study.endpoint_connections = [endpoints[1], endpoints[4], endpoints[6], endpoints[9]].map do |endpoint|
  #  EndpointConnection.new(endpoint: endpoint)
  #end

  puts "Account: #{account.inspect}"
  puts "Connected account endpoints: #{account.connected_endpoints.to_a}"
  puts "Endpoint Connections: #{account.endpoint_connections.to_a}"
  puts "Study: #{study.inspect}"
  puts "Connected study endpoints: #{study.connected_endpoints.to_a}"

  account.save!
  study.save!
end
