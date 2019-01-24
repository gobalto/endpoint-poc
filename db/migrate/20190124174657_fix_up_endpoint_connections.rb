class FixUpEndpointConnections < ActiveRecord::Migration
  def change
    rename_table :connected_endpoints, :endpoint_connections
  end
end
