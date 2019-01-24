class Account < ActiveRecord::Base
  has_many :endpoints
  has_many :studies
  has_many :endpoint_connections, as: :owner
  has_many :connected_endpoints, through: :endpoint_connections, source: :endpoint
end
