class AssociateStudyWithAccount < ActiveRecord::Migration
  def change
    add_column :studies, :account_id, :integer
  end
end
