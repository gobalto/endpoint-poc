class Endpoint < ActiveRecord::Base
  belongs_to :account
  has_many :endpoint_connections
end
