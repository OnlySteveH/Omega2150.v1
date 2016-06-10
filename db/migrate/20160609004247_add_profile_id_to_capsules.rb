class AddProfileIdToCapsules < ActiveRecord::Migration
  def change
    add_column :capsules, :profile_id, :integer
    add_index :capsules, :profile_id
  end
end
