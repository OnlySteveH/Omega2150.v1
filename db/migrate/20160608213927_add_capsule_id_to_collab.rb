class AddCapsuleIdToCollab < ActiveRecord::Migration
  def change
    add_column :collabs, :capsule_id, :integer
    add_index :collabs, :capsule_id
  end
end
