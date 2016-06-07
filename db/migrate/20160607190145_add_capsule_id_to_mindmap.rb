class AddCapsuleIdToMindmap < ActiveRecord::Migration
  def change
    add_column :mindmaps, :capsule_id, :integer
    add_index :mindmaps, :capsule_id
  end
end
