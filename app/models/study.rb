class Study < ActiveRecord::Base
  belongs_to :account
  has_many :endpoint_connections, as: :owner
  has_many :connected_endpoints, through: :endpoint_connections, source: :endpoint
end
