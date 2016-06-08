class AddCapsuleIdToComments < ActiveRecord::Migration
  def change
    add_column :comments, :capsule_id, :integer
    add_index :comments, :capsule_id
  end
end
