class CreateEndpoints < ActiveRecord::Migration
  def change
    create_table :endpoints do |t|
      t.integer :owner_id, null: false
      t.string :owner_type, null: false
      t.integer :endpoint_type, null: false, default: 0
      t.string :name
    end
  end
end
