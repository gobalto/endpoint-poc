class CreateConnectedEndpoints < ActiveRecord::Migration
  def change
    create_table :connected_endpoints do |t|
      t.integer :owner_id
      t.string :owner_type
      t.integer :endpoint_id
      t.string :connection_type
      t.boolean :active
      t.timestamps null: false
    end
  end
end
