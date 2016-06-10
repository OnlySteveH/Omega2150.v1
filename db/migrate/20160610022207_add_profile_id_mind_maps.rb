class AddProfileIdMindMaps < ActiveRecord::Migration
  def change
    add_column :mindmaps, :profile_id, :integer
    add_index :mindmaps, :profile_id
  end
end
