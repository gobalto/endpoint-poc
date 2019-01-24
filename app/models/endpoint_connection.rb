class EndpointConnection < ActiveRecord::Base
  belongs_to :endpoint
  belongs_to :owner, polymorphic: true
end
