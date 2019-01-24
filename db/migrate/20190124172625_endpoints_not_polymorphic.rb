class EndpointsNotPolymorphic < ActiveRecord::Migration
  def change
    rename_column :endpoints, :owner_id, :account_id
    remove_column :endpoints, :owner_type
  end
end
